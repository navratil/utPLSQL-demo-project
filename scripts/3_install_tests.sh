docker run --rm -v $(pwd):/work -w /work/  --network host \
    --entrypoint sqlplus gvenzl/oracle-free:23-slim \
    ut3_demo/ut3_demo@//127.0.0.1:1521/freepdb1 @test/install.sql
