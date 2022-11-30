FROM node:16

ENV PORT 9012

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Installing dependencies
COPY package.json /usr/src/app/
RUN yarn install

# Copying source files
COPY . /usr/src/app

# Building app
RUN yarn build
EXPOSE 9012

# Running the app
CMD "yarn" "dev"