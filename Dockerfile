FROM mcr.microsoft.com/mssql/server:2019-latest

USER root
RUN apt-get -y update && apt-get install -y netcat

ADD root/ /

EXPOSE 1433
CMD ["/docker-entrypoint.sh"]
