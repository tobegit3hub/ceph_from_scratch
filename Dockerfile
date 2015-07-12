FROM ubuntu:14.10
MAINTAINER tobe tobeg3oogle@gmail.com

RUN apt-get -y update

# Install gitbook
RUN apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup | bash - && \
    apt-get install -y nodejs && \
    npm install gitbook -g

# Add the book
ADD . /ceph_from_scratch
WORKDIR /ceph_from_scratch

EXPOSE 4000

CMD ["gitbook", "serve", "."]
