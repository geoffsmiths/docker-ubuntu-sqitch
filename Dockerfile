# Use Ubuntu as the base image
FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y sqitch libdbd-pg-perl postgresql-client libdbd-sqlite3-perl sqlite3

# Set the working directory
WORKDIR /sqitch

# Define a volume for Sqitch projects
VOLUME ["/sqitch"]