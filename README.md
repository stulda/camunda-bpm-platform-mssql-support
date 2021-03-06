## Camunda BPM platfrom with MSSQL support in Docker

Docker Hub: https://hub.docker.com/r/stuldacz/camunda-bpm-platform-mssql-support

Demo docker-compose.yml:

```yml
version: '3.5'
services:

    camunda:
        image: stuldacz/camunda-bpm-platform-mssql-support:latest
        container_name: camunda
        restart: always
        environment:
            - DB_DRIVER=com.microsoft.sqlserver.jdbc.SQLServerDriver
            - DB_URL=jdbc:sqlserver://sqlserver:1433
            - DB_USERNAME=SA
            - DB_PASSWORD=CamundaTest1234
            - WAIT_FOR=sqlserver:1433
        links:
            - sqlserver
        ports:
            - 8080:8080

    sqlserver:
        image: mcr.microsoft.com/mssql/server:2019-latest
        container_name: sqlserver
        restart: always
        environment:
            - ACCEPT_EULA=Y
            - MSSQL_SA_PASSWORD=CamundaTest1234
            - MSSQL_PID=Developer
```

For development on device with Apple Silicon use image *mcr.microsoft.com/azure-sql-edge* as SQL server.

