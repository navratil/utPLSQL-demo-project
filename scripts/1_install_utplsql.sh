git clone --depth=1 --branch=${UTPLSQL_VERSION} https://github.com/utPLSQL/utPLSQL.git utPLSQL
chmod -R go+w $(pwd)/utPLSQL/source
docker run --rm -v $(pwd)/utPLSQL:/utPLSQL -w /utPLSQL/source --network host \
    --entrypoint sqlplus gvenzl/oracle-free:23-slim sys/oracle@//127.0.0.1:1521/freepdb1 as sysdba @install_headless.sql UT3 UT3 users
