FROM ruby:2.6.6-alpine
# Ubuntu
RUN apk update && apk add nodejs yarn postgresql-client postgresql-dev tzdata build-base

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

RUN gem install bundler:2.1.4
ADD Gemfile* $APP_HOME/
RUN bundle install
ENV SECRET_KEY_BASE=dumb

ADD . $APP_HOME
RUN yarn install --check-files
CMD ["rails","server","-b","0.0.0.0"]
RUN RAILS_ENV=production bundle exec rake assets:precompile
