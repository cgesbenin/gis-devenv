FROM postgres:11

ENV POSTGIS_MAJOR 2.5
ENV POSTGIS_VERSION 2.5.2+dfsg-1~exp1.pgdg90+1

RUN apt-get update \
      && apt-cache showpkg postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR \
      && apt-get install -y --no-install-recommends \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR=$POSTGIS_VERSION \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR-scripts=$POSTGIS_VERSION \
           postgis=$POSTGIS_VERSION \
      && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./postgis-initdb.sh /docker-entrypoint-initdb.d/postgis.sh
COPY ./postgis-update.sh /usr/local/bin/update-postgis.sh
RUN chmod -x /docker-entrypoint-initdb.d/postgis.sh
RUN chmod -x /usr/local/bin/update-postgis.sh
