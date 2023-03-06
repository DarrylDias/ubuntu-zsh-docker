# Use Ubuntu as base image
FROM ubuntu:latest

# Install zsh and curl
RUN apt-get update && apt-get -y install zsh curl

# Install oh-my-zsh
RUN zsh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || true

# Set zsh as default shell
RUN chsh -s /bin/zsh

# Start zsh when running the container
ENTRYPOINT ["zsh"]
