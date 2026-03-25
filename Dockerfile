FROM alpine:latest

# Author: Ankon Polley
LABEL MAINTAINER="Ankon Polley <https://github.com/anknpolley123/Polleythephisher.git>"
LABEL TOOL_NAME="Polleythephisher"

# Set working directory
WORKDIR /Polleythephisher/

# Add project files
ADD . /Polleythephisher

# Install dependencies for Polleythephisher
RUN apk add --no-cache bash ncurses curl unzip wget php 

# Ensure the main script is executable
RUN chmod +x Polleythephisher.sh

# Run the tool
CMD ["./Polleythephisher.sh"]

