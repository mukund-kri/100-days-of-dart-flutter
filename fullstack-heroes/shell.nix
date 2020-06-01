with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "aqueduct-postgres";
  buildInputs = [
    postgresql
    dart
  ];

  shellHook = ''
    export PGBASE=$HOME/var/postgres
    export PGDATA=$PGBASE/data
    export PGHOST=/run/postgresql/
    export LOG_PATH=$PGBASE/log
    export PGDATABASE=postgres
    export DATABASE_URL="postgresql:///postgres?host=$PGHOST"
    if [ ! -d $PGHOST ]; then
      mkdir -p $PGHOST
    fi
    if [ ! -d $PGDATA ]; then
      echo 'Initializing postgresql database...'
      initdb $PGDATA --auth=trust >/dev/null
    fi
    pg_ctl                            \
    -D $PGDATA                        \
    -l $PGDATA/postgres.log           \   
    -o "-c log_destination='stderr'"  \
    -o "-c logging_collector=on"      \
    -o "-c log_directory='log'"       \
    -o "-c log_filename='postgresql-%Y-%m-%d_%H%M%S.log'"   \
    -o "-c log_min_messages=info"                           \
    -o "-c log_min_error_statement=info"                    \
    -o "-c log_connections=on"                              \
   start
  '';
}
