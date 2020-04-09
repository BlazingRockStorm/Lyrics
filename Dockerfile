FROM ruby:2.4.0

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN mkdir /lyrics
WORKDIR /lyrics

COPY Gemfile /lyrics/Gemfile
COPY Gemfile.lock /lyrics/Gemfile.lock
RUN bundle install
