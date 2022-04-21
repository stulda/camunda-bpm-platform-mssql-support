FROM camunda/camunda-bpm-platform:7.17.0

USER root

RUN apk add curl

USER camunda

RUN curl https://download.microsoft.com/download/4/d/5/4d5a79be-35f8-48d4-a984-473747362f99/sqljdbc_10.2.0.0_enu.tar.gz --output sqljdbc_10.2.0.0_enu.tar.gz

RUN tar -xf sqljdbc_10.2.0.0_enu.tar.gz

RUN cp sqljdbc_10.2/enu/mssql-jdbc-10.2.0.jre11.jar  /camunda/lib/mssql-jdbc-10.2.0.jre11.jar

RUN rm -rf sqljdbc_10.2
