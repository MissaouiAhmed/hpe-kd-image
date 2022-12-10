FROM rocker/r-ver:devel
ENV S6_VERSION=v2.1.0.2
ENV RSTUDIO_VERSION=2022.07.2+576
ENV DEFAULT_USER=rstudio
ENV PANDOC_VERSION=default
ENV QUARTO_VERSION=default
RUN /rocker_scripts/install_rstudio.sh
RUN /rocker_scripts/install_pandoc.sh
RUN /rocker_scripts/install_quarto.sh

RUN mkdir -p /opt/configscript/
RUN mkdir -p /data
RUN cd /opt/configscript/ && \
    wget https://github.com/MissaouiAhmed/hpe-kd-config/releases/download/refs%2Fheads%2Fmain/appconfig.tgz --no-check-certificate
RUN chmod 755 /opt/configscript/appconfig.tgz
EXPOSE 8787
CMD ["/init"]





