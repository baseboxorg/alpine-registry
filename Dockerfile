FROM resin/raspberrypi2-alpine-python:latest  
# Enable OpenRC
ENV INITSYSTEM on  

RUN apk update &&  apk add --update bash curl wget docker-registry
ADD ./config.yml /etc/docker-registry/config.yml

EXPOSE 80
ENTRYPOINT ["/usr/bin/docker-registry"]
CMD ["/etc/docker-registry/config.yml"]

