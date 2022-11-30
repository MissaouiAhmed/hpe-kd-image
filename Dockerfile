FROM bluedata/centos7:4.1

RUN yum install -y java-11-openjdk

RUN cd /opt && \
    wget https://www.mirrorservice.org/sites/ftp.apache.org/nifi/1.12.1/nifi-1.12.1-bin.tar.gz --no-check-certificate && \
    tar xf nifi-1.12.1-bin.tar.gz && \
    rm nifi-1.12.1-bin.tar.gz