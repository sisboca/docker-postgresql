#!/usr/bin/env sh

set -e
chown postgres:postgres /var/log/pg_log
chown -R postgres:postgres /var/lib/postgresql/data/pgdata
chmod 0700 /var/lib/postgresql/data/pgdata
su  postgres -c "postgres -c config_file=/etc/postgresql/postgresql.conf"