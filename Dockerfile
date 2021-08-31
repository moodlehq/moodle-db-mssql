FROM mcr.microsoft.com/mssql/server:2017-CU24-ubuntu-16.04

ADD root/ /

EXPOSE 1433
CMD ["/docker-entrypoint.sh"]
