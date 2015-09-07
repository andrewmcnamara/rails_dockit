FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile* /myapp/
RUN bundle install
ADD . /myapp
WORKDIR /myapp
#RUN RAILS_ENV=production bundle exec rake assets:precompile --trace
#CMD ["rails","server","-b","0.0.0.0"]
