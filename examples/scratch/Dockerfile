FROM rust AS build

# Because there are no OS libraries we need the target that statically links
RUN rustup target add x86_64-unknown-linux-musl

WORKDIR /usr/src/hellodocker
COPY . .
RUN cargo build --release -vv --target x86_64-unknown-linux-musl

FROM scratch
COPY --from=build /usr/src/hellodocker/target/x86_64-unknown-linux-musl/release/hellodocker \
  /bin/hellodocker
ENTRYPOINT ["/bin/hellodocker"]
