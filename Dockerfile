FROM ruby:latest
LABEL authors="michaelwang"

ENTRYPOINT ["top", "-b"]

RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" \
    && brew install rbenv ruby-build \
    && gem install bundler \
    && rbenv install 3.1.2 \
    && rbenv global 3.1.2 \
    && brew install chromedriver

CMD echo "Hello, World! This is a test."