FROM debian:11.6

ENV DEBIAN_FRONTEND noninteractive \
    TIMEZONE=Europe/Istanbul 

EXPOSE 80 443

RUN mkdir -p /opt/installations

COPY installations/scripts /opt/installations/scripts/
RUN bash /opt/installations/scripts/install_tools.sh
RUN bash /opt/installations/scripts/install_fonts.sh
RUN rm -rf /opt/installations/scripts

COPY installations/startups /opt/
RUN chmod +x /opt/startup.sh
RUN rm -f /opt/installations/

ENTRYPOINT ["/opt/startup.sh"]