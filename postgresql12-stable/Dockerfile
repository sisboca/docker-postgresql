FROM postgres:12-alpine
ENV LC_COLLATE "C"
RUN mkdir -p /etc/postgresql/conf.d
RUN mkdir -p /var/log/pg_log
COPY ./postgresql.conf /etc/postgresql/postgresql.conf
COPY ./pg_hba.conf /etc/postgresql/pg_hba.conf
COPY ./10-pgbadger_pre.conf /etc/postgresql/conf.d/10-pgbadger_pre.conf
COPY ./entry_point.sh /entry_point.sh
VOLUME ["/var/log/pg_log", "/var/lib/postgresql/data/pgdata"]
CMD ["/entry_point.sh"]

