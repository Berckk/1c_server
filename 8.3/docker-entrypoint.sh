#!/bin/bash
set -e

if [ "$1" = 'ragent' ]; then
#	chown -R postgres "$PGDATA"

#	chmod g+s /run/postgresql
#	chown -R postgres:postgres /run/postgresql

	exec gosu usr1cv8 /opt/1C/v8.3/x86_64/ragent "$@"
fi

exec "$@"