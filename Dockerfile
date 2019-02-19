FROM lachlanevenson/k8s-kubectl:v1.11.7

RUN sed -i -re 's|http://[^/]+/(.*)|http://mirrors.aliyun.com/\1|' /etc/apk/repositories && \
    apk add curl

RUN curl -s https://gist.githubusercontent.com/zgwldrc/8830c8f8f0164cab1d6a428490bd615d/raw > ~/.bash_functions
ENTRYPOINT ["sh", "-c"]
