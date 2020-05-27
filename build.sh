docker build -t myimage --build-arg TEST_ENV="test"  .
docker run -d test sleep 1d