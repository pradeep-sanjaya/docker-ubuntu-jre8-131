FROM ubuntu:18.04
LABEL maintainer="sanayangp@gmail.com"
RUN apt-get update && apt-get install -y --no-install-recommends curl ca-certificates && \
    curl -L -b "oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jre-8u131-linux-x64.tar.gz -O && \
    tar -xzf jre-8u131-linux-x64.tar.gz && \
    mv jre1.8.0_131 /opt && \
    rm -f jre-8u131-linux-x64.tar.gz && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* /usr/share/info/*

ENV JAVA_HOME="/opt/jre1.8.0_131" \
    PATH="/opt/jre1.8.0_131/bin:${PATH}"