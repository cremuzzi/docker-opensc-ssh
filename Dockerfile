FROM cremuzzi/opensc:0.19.0-alpine

LABEL maintainer="Carlos Remuzzi <carlosremuzzi@gmail.com>"
LABEL version="0.19.0"

RUN apk add --no-cache \
        openssh

WORKDIR /home/opensc

USER opensc

CMD ["pcscd","-f","-i"]
