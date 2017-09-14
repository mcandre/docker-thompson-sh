FROM library/debian:jessie
RUN apt-get update && \
    apt-get install -y build-essential git && \
    git clone https://github.com/JNeitzel/v6shell.git && \
    sh -c 'cd v6shell && ./configure && make && make install'
