FROM ruby:2.4.1

COPY . /root/redis-to-telegram
WORKDIR /root/redis-to-telegram
RUN bundle install --without development
EXPOSE 80
CMD bash -c "REDIS=redis ruby app.rb"