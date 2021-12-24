FROM ruby:3.0.3-alpine

WORKDIR /demo

RUN apk --no-cache add build-base git tzdata

COPY Gemfile Gemfile.lock ./
RUN bundle install && gem install foreman

CMD foreman start
