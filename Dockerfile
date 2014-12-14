FROM ubuntu:trusty
MAINTAINER Fredrik Wendt <fredrik@wendt.se>

RUN apt-get update
RUN apt-get install -y python-pip aptitude ruby ruby-dev make nodejs libgsl0-dev
RUN pip install pygments
RUN gem install jekyll rb-gsl
