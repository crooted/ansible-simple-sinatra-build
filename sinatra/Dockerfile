# Dockerfile.rails

FROM ruby:2.7

RUN mkdir /hello-world-app
COPY . /hello-world-app
WORKDIR /hello-world-app

# RUN gem install bundler
RUN bundle update --bundler
RUN bundle config set deployment 'true' without development test

EXPOSE 9292
COPY ./entrypoint.sh /hello-world-app
RUN chmod 755 /hello-world-app/entrypoint.sh

ENTRYPOINT ["/hello-world-app/entrypoint.sh"]

