# syntax=docker/dockerfile:1.3

FROM --platform=$BUILDPLATFORM centos:7

# Print a message during build
RUN echo "Hello, World! This is a test Dockerfile."
