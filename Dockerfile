FROM alpine:3.12.0

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk update \
    && apk upgrade \
    && apk add --no-cache \ 
        bash \
        bash-doc \
        bash-completion \
        wget \
        curl \
        jq \
    && rm -rf /var/cache/apk/* \
    && /bin/bash --version