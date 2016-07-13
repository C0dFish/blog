FROM node:4.2

# Create work directory
RUN mkdir -p /usr/local/app/
WORKDIR /usr/local/app/

# Install dependence
COPY . /usr/local/app/
RUN npm install --unsafe-perm
RUN npm install forever -g --unsafe-perm

# Expose port
EXPOSE 80

# Start
CMD forever --minUptime 1000 --spinSleepTime 1000 index.js