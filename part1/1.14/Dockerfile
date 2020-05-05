FROM ruby:2.6.0

WORKDIR /app
COPY rails-example-project .
RUN gem install bundler
RUN bundle install
RUN rails db:migrate
CMD rails s
