FROM ruby:3.1.3

WORKDIR /app

RUN curl -sL https://deb.nodesource.com/setup_20.x | bash -

RUN apt-get update && \
    apt-get install -y nodejs && \
    apt-get install -y openjdk-11-jdk && \
    apt-get install -y git

RUN gem install jekyll

RUN npm update

RUN npm install -g npm@10.8.1

RUN npm install -g fsh-sushi@3.11.0