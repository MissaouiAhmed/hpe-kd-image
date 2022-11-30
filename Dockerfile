FROM bluedata/centos7:4.1

RUN yum install -y java-11-openjdk

RUN cd /opt && \
    wget https://www.mirrorservice.org/sites/ftp.apache.org/nifi/1.19.0/minifi-1.19.0-bin.zip --no-check-certificate && \
    unzip minifi-1.19.0-bin.zip && \
    rm minifi-1.19.0-bin.zip

RUN cd /opt/configscripts/ && \
    wget https://github.com/MissaouiAhmed/hpe-kd-config/releases/download/refs%2Fheads%2Fmain/appconfig.tgz --no-check-certificate