FROM ruby:3.1.0-alpine

WORKDIR /demo

RUN apk --no-cache add build-base git tzdata

COPY Gemfile Gemfile.lock ./
RUN bundle install && gem install foreman

CMD bin/rails server -p 9000 -b 0.0.0.0
