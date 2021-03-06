FROM ruby:2-slim

RUN apt-get update && apt-get install -y build-essential

RUN mkdir /app
WORKDIR /app

COPY Gemfile .
COPY minidoc.gemspec .

RUN mkdir -p lib/minidoc
COPY lib/minidoc/version.rb lib/minidoc/version.rb

RUN bundle install
