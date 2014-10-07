FROM ruby:2.0.0-p576

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD Gemfile /usr/src/app/Gemfile
ADD config.ru /usr/src/app/config.ru

RUN bundle install --system

EXPOSE 9292
