FROM camunda/camunda-bpm-platform:7.16.0

USER root

RUN apk add curl

USER camunda

RUN curl https://download.microsoft.com/download/b/c/5/bc5e407f-97ff-42ea-959d-12f2391063d7/sqljdbc_9.4.0.0_enu.tar.gz --output sqljdbc_9.4.0.0_enu.tar.gz

RUN tar -xf sqljdbc_9.4.0.0_enu.tar.gz

RUN cp sqljdbc_9.4/enu/mssql-jdbc-9.4.0.jre11.jar  /camunda/lib/mssql-jdbc-9.4.0.jre11.jar

RUN rm -rf sqljdbc_9.4
