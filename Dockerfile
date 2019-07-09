FROM lachlanevenson/k8s-kubectl:v1.11.7

RUN sed -i -re 's|http://[^/]+/(.*)|http://mirrors.aliyun.com/\1|' /etc/apk/repositories && \
    apk add curl
RUN wget https://get.helm.sh/helm-v2.14.1-linux-amd64.tar.gz && \
    tar xf helm-v2.14.1-linux-amd64.tar.gz && \
    mv linux-amd64/helm /usr/local/bin/
    
ENTRYPOINT ["sh", "-c"]
