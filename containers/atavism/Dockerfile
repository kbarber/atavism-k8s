FROM ubuntu:18.04

# Install.
RUN set -xe && \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y curl git htop man unzip vim wget dnsutils \
    inetutils-ping telnet netcat-traditional lsof openjdk-8-jre-headless \
    strace netstat mysql-client nmap && \
  rm -rf /var/lib/apt/lists/*

COPY --from=gcr.io/atavism/atavism_server:v2019.1.2 /opt/atavism_server /opt/atavism_server

COPY entry_point.sh /
RUN chmod +x /entry_point.sh

WORKDIR /

ENTRYPOINT ["/entry_point.sh"]
CMD ["auth"]