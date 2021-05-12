FROM node:14.15-slim

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
# COPY package-lock.json ./
RUN npm install react-scripts -g --silent
RUN npm install --silent


# add app
COPY . ./

# start app
CMD ["npm", "start"]
