FROM node:14.15.3-alpine3.11

# Create app directory to use non-root user
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

# Set the working directory of the application
WORKDIR /home/node/app

# Copy the package.json and package-lock.json (for npm 5+)
COPY package*.json ./

# Ensure that all of the application files are owned by the non-root "node" user
USER node

# Install app dependencies
RUN npm install

# Bundle app source
COPY --chown=node:node . .

# Expose and start the application
EXPOSE 8080
CMD [ "node", "./bin/www" ]
