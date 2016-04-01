service nginx restart



cd /etc/nginx/sites-enabled
ln -s /etc/nginx/sites-available/type_and_learn.kalina.tech type_and_learn.kalina.tech

## Sample Config for Sinatra
## /etc/nginx/sites-available/

upstream unicorn {
  server unix:/tmp/unicorn.type_and_learn_web.sock fail_timeout=0;
}

server {
  listen 80;
  server_name type-and-learn.kalina.tech;
  #access_log /var/www/study_rack.kalina.technology/access.log;

  root /var/www/type_and_learn_web/current/public;

  location ^~ /assets/ {
    gzip_static on;
    expires max;
    add_header Cache-Control public;
    add_header Created-By KalinaTech/Toma;
  }

  try_files $uri/index.html $uri @unicorn;

  location @unicorn {
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header Host $http_host;
    proxy_redirect off;
    proxy_pass http://unicorn;
  }

  error_page 500 502 503 504 /public/500.html;
  keepalive_timeout 10;
}

## Websockets

location /wsapp/ {
  proxy_pass http://wsbackend;
  proxy_http_version 1.1;
  proxy_set_header Upgrade $http_upgrade;
  proxy_set_header Connection "upgrade";
}