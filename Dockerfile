FROM amazon/aws-cli:2.7.16

RUN yum update all -y && \
    yum install unzip git jq openssh -y

RUN ["/bin/sh", "-c", "mkdir -p /src"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
