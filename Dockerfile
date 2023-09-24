FROM gcc as builder

RUN git clone --recursive https://github.com/micropython/micropython.git
RUN make -C micropython/mpy-cross

FROM debian
COPY --from=builder /micropython/mpy-cross/build/mpy-cross /usr/local/bin/

VOLUME /src
WORKDIR /src
