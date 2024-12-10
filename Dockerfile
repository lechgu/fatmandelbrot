# Base image
FROM lechgu/mandelbrot:latest

# Set the number of extra gigabytes (can be overridden during build with --build-arg)
ARG GIGABYTES=1

# Add random data in separate layers
RUN mkdir /random_data

# Loop to create the layers
# Each gigabyte of random data will be created as its own layer
RUN : $( \
    for i in $(seq 1 $GIGABYTES); do \
        echo "Adding 1GB of random data in layer $i" && \
        dd if=/dev/urandom of=/random_data/file_$i bs=1M count=1024; \
    done \
)
