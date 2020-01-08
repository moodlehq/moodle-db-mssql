FROM mcr.microsoft.com/mssql/server:2017-CU18-ubuntu-16.04

RUN apt-get -y update && apt-get install -y netcat

ADD root/ /

EXPOSE 1433
CMD ["/docker-entrypoint.sh"]
