FROM python:slim-buster

ENV DEBIAN_FRONTEND noninteractive

RUN apt update
RUN apt -y dist-upgrade

# Chromium and Chromedriver
RUN apt -y install chromium-driver

# Selenium
RUN pip3 install --upgrade pip wheel setuptools selenium
