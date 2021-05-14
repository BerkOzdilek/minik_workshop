# build environment
FROM node:14.15.0-alpine as build
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
COPY package-lock.json ./
RUN npm ci --silent
RUN npm install react-scripts@3.4.1 -g --silent
COPY . ./
RUN npm run build

# production environment
FROM nginx:stable-alpine
# Add bash
# RUN echo -e "http://nl.alpinelinux.org/alpine/v3.13/main\nhttp://nl.alpinelinux.org/alpine/v3.13/community" > /etc/apk/repositories
# RUN apk add --no-cache bash
COPY --from=build /app/build /usr/share/nginx/html
# Copy .env file and shell script to container
WORKDIR /usr/share/nginx/html
# COPY ./env.sh .
# COPY .env .
# RUN chmod +x env.sh

EXPOSE 80

# CMD ["/bin/bash", "-c", "/usr/share/nginx/html/env.sh && nginx -g \"daemon off;\""]

COPY ./env-config.js .
CMD ["nginx", "-g", "daemon off;"]