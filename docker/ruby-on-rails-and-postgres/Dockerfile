FROM ruby:3.1.2

RUN mkdir /app
WORKDIR /app

COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
ENTRYPOINT [ "/app/docker-entrypoint.sh" ]