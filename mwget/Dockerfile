FROM ubuntu as builder
RUN apt update && apt install -y  intltool pkg-config git build-essential cmake libssl-dev
RUN git clone https://github.com/rayylee/mwget.git
RUN cd mwget && ./configure && make && make install


FROM ubuntu
COPY --from=builder /usr/local/bin/mwget /usr/local/bin/mwget