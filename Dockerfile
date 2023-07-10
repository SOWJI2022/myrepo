FROM bash:latest
COPY backup.sh /backup.sh
RUN chmod +x /backup.sh
WORKDIR /
CMD ["/backup.sh"]
