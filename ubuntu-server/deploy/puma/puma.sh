#!/usr/bin/env bash

# Simple move this file into your Rails `script` folder. Also make sure you `chmod +x puma.sh`.
# Please modify the CONSTANT variables to fit your configurations.

# The script will start with config set by $PUMA_CONFIG_FILE by default

APP_ROOT=/var/www/type_and_learn_api
APP_ROOT_CURRENT=/var/www/type_and_learn_api/current
PUMA_CONFIG_FILE=config/puma.rb
PUMA_PID_FILE=$APP_ROOT/shared/tmp/pids/puma.pid
PUMA_SOCKET=$APP_ROOT/shared/tmp/sockets/puma.sock

# check if puma process is running
puma_is_running() {
  if [ -S $PUMA_SOCKET ] ; then
    if [ -e $PUMA_PID_FILE ] ; then
      if cat $PUMA_PID_FILE | xargs pgrep -P > /dev/null ; then
        return 0
      else
        echo "No puma process found"
      fi
    else
      echo "No puma pid file found"
    fi
  else
    echo "No puma socket found"
  fi

  return 1
}

case "$1" in
  start)
    echo "Starting puma..."
    rm -f $PUMA_SOCKET
    cd $APP_ROOT_CURRENT
    if [ -e $PUMA_CONFIG_FILE ] ; then
      bundle exec puma -d --config $PUMA_CONFIG_FILE
    else
      bundle exec puma --daemon --bind unix://$PUMA_SOCKET --pidfile $PUMA_PID_FILE
    fi

    echo "done"
    ;;

  stop)
    echo "Stopping puma..."
      kill -s SIGTERM `cat $PUMA_PID_FILE`
      rm -f $PUMA_PID_FILE
      rm -f $PUMA_SOCKET

    echo "done"
    ;;

  restart)
    if puma_is_running ; then
      echo "Hot-restarting puma..."
      kill -s SIGUSR2 `cat $PUMA_PID_FILE`

      echo "Doublechecking the process restart..."
      sleep 3
      if puma_is_running ; then
        echo "done"
        exit 0
      else
        echo "Puma restart failed :/"
      fi
    fi

    echo "Trying cold reboot"
    $APP_ROOT/shared/script/puma.sh start
    ;;

  prestart)
    if puma_is_running ; then
      echo "Phased-restarting puma..."
      kill -s SIGUSR1 `cat $PUMA_PID_FILE`

      echo "Doublechecking the process restart..."
      sleep 2
      if puma_is_running ; then
        echo "done"
        exit 0
      else
        echo "Puma restart failed :/"
      fi
    fi

    echo "Trying cold reboot"
    $APP_ROOT/shared/script/puma.sh start
    ;;

  *)
    echo "Usage: script/puma.sh {start|stop|restart|prestart}" >&2
    ;;
esac