FROM ubuntu:latest
LABEL authors="michaelwang"

ENTRYPOINT ["top", "-b"]

CMD echo "Hello, World! This is a test."