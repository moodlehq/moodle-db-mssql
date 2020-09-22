# moodle-db-mssql: Microsoft SQL Server for Moodle
[![Build Status](https://travis-ci.com/moodlehq/moodle-db-mssql.svg?branch=master)](https://travis-ci.com/moodlehq/moodle-db-mssql)

A Microsoft SQL Server for Linux instance configured for Moodle development. Based on [mcr.microsoft.com/mssql/server](https://hub.docker.com/_/microsoft-mssql-server)

# Example usage

```bash
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=yourStrong(!)Password' -p 1433:1433 -d moodlehq/moodle-db-mssql
```

# Features:
* Microsoft SQL server setup and database created ready for Moodle install
* Backed by [automated tests](https://travis-ci.com/moodlehq/moodle-db-mssql)



Requires the following environment flags:
* ACCEPT_EULA=Y
* SA_PASSWORD=<your_strong_password>

# See also
This container is part of a set of containers for Moodle development, see also:
* [moodle-docker](https://github.com/moodlehq/moodle-docker) a docker-composer based set of tools to get Moodle development running with zero configuration
* [moodle-php-apache](https://github.com/moodlehq/moodle-php-apache) PHP and Apache configured for Moodle development
* [moodle-db-oracle](https://github.com/moodlehq/moodle-db-oracle) Oracle XE configured for Moodle development
