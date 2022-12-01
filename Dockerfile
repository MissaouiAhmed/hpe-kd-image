FROM bluedata/centos7:4.1

RUN yum install -y java-11-openjdk

RUN cd /opt && \
    wget https://archive.apache.org/dist/nifi/1.18.0/nifi-1.18.0-bin.zip --no-check-certificate && \
    unzip nifi-1.18.0-bin.zip && \
    rm nifi-1.18.0-bin.zip
RUN mkdir -p /opt/configscript/
RUN mkdir -p /data


RUN cd /opt/configscript/ && \
    wget https://github.com/MissaouiAhmed/hpe-kd-config/releases/download/refs%2Fheads%2Fmain/appconfig.tgz --no-check-certificate
RUN chmod 755 /opt/configscript/appconfig.tgz