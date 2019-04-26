FROM lachlanevenson/k8s-kubectl:v1.11.7

RUN sed -i -re 's|http://[^/]+/(.*)|http://mirrors.aliyun.com/\1|' /etc/apk/repositories && \
    apk add curl

ENTRYPOINT ["sh", "-c"]
