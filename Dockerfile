FROM ruby:3.1.2-alpine

RUN apk add --no-cache libpq-dev g++ gcc make 
RUN apk add --no-cache dpkg-dev

WORKDIR /app
COPY . .

EXPOSE 3000

# RUN bundle install
# RUN rails db:create
# RUN rails db:migrate
ENV BUNDLE_PATH /box

# RUN /app/script/start

# CMD sh

# ENTRYPOINT sh
CMD rails s -b 0.0.0.0
