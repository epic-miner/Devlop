# Use the latest Ubuntu image as the base
FROM ubuntu:latest

# Set the maintainer label
LABEL maintainer="yourname@example.com"

# Install necessary packages
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean

# Clone the repository
RUN git clone https://github.com/epic-miner/codeserver /opt/codeserver

# Change directory to /opt/codeserver
WORKDIR /opt/codeserver

# Make the script executable (if it is not already)
RUN chmod +x codeserver.sh

# Run the script
CMD ["sh", "codeserver.sh"]