FROM lachlanevenson/k8s-kubectl:v1.11.7

RUN sed -i -re 's|http://[^/]+/(.*)|http://mirrors.aliyun.com/\1|' /etc/apk/repositories && \
    apk add curl
ADD init.sh /usr/local/bin/init
RUN chmod +x /usr/local/bin/init
ENTRYPOINT ["sh", "-c"]
