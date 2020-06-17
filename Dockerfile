ARG version=latest
FROM ubuntu:$version
#MAINTAINER JCD "jcd717@outlook.com"

LABEL maintainer="une licorne" \
      description="un nuage" \
      auteur="un haricot"

COPY heartbeat.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh ; \
    echo coucou >test.txt

ARG hbs=1
ENV HEARTBEATSTEP $hbs


# information de port réseau utile
EXPOSE 1234/udp 4321/tcp

ENTRYPOINT ["/entrypoint.sh"]
CMD ["battement"]

