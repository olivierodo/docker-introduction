FROM ubuntu:14.04
# Define the Env var HOME
ENV HOME /usr/src

# Update apt and install nodejs, npm
RUN apt-get update && apt-get install -y \
  nodejs \
  npm


# Add the current folder in a container's folder
ADD . /usr/src

# Define the workdir folder
WORKDIR /usr/src/

# Install Express
RUN npm install -g express

# Create an alias for nodejs
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Define the port to expose
EXPOSE 3000

# Command to run the app
CMD npm install && npm start

