FROM ruby:3.2-bullseye

WORKDIR /bootstrap-email

COPY . .

RUN gem build bootstrap-email.gemspec -o bootstrap-email.gem
RUN gem install bootstrap-email.gem
RUN echo "require 'bootstrap-email'" | irb

CMD ["bootstrap-email"]
