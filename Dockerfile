FROM ruby:2.6.6

RUN apt-get update -qq && apt-get install -y nodejs yarn postgresql-client

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

RUN gem install bundler:2.1.4
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install --deployment --without development test
COPY . /app
RUN bundle exec rake yarn:install
# Set production environment
ENV RAILS_ENV production# Assets, to fix missing secret key issue during building
RUN SECRET_KEY_BASE=dumb bundle exec rails assets:precompile
EXPOSE 80

WORKDIR $APP_HOME
CMD ["rails","server","-b","0.0.0.0"]
