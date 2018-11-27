FROM cremuzzi/opensc:0.19.0-alpine

LABEL maintainer="Carlos Remuzzi <carlosremuzzi@gmail.com>"
LABEL version="0.19.0"

WORKDIR /

RUN apk add --no-cache \
        openssh

CMD ["pcscd","-f","-i"]
