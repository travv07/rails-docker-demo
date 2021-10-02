FROM ruby:2.6.3

WORKDIR /app
COPY Gemfile Gemfile.lock ./
COPY . .
RUN bundle install
ADD . /app
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]