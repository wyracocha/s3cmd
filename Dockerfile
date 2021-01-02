FROM centos:7
ARG VERSION=2.1.0
RUN yum install -y python-dateutil
RUN curl -O https://ufpr.dl.sourceforge.net/project/s3tools/s3cmd/${VERSION}/s3cmd-${VERSION}.tar.gz
RUN tar -zxf s3cmd-${VERSION}.tar.gz --strip 1 -C /usr/local/bin
ENTRYPOINT ["s3cmd"]
CMD ["--help"]