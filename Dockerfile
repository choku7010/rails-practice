FROM ruby:3.3

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile Gemfile.lock /app/
RUN bundle install

COPY . /app

EXPOSE 3000

CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bin/rails server -b 0.0.0.0"]