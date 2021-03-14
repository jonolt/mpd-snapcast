# make snapweb files 
FROM ubuntu AS builder

ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y git make node-typescript

WORKDIR /
RUN git clone https://github.com/badaix/snapweb.git
WORKDIR /snapweb 
RUN make

# Install SnapServer on minimal OS
FROM alpine

RUN apk add --no-cache snapcast

ADD ["snapserver.conf", "/etc/snapserver.conf"]
COPY --from=builder snapweb/dist /usr/share/snapserver/snapweb
# stream port (1704)
EXPOSE 1704
# control port (1705)
EXPOSE 1705
# http port (1780)
EXPOSE 1780

ENTRYPOINT ["snapserver"]
