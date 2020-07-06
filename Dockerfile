FROM alpine:3.12.0

RUN apk update \
    && apk upgrade \
    && apk add --no-cache \ 
        procps
        bash \
        bash-doc \
        bash-completion \
        wget \
        curl \
        jq \
    && rm -rf /var/cache/apk/* \
    && /bin/bash --version \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    && echo "Asia/Shanghai" > /etc/timezone

