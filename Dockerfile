# Build stage
FROM node:18-alpine as build
RUN apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev vips-dev git > /dev/null 2>&1

ENV NODE_ENV=production
ENV PUBLIC_URL=https://library.gizmolab.net/strapi

WORKDIR /opt/
COPY package.json yarn.lock ./
RUN yarn config set network-timeout 600000 -g && yarn install --production
ENV PATH /opt/node_modules/.bin:$PATH
WORKDIR /opt/app
COPY . .
RUN yarn build

# Production stage
FROM node:18-alpine
RUN apk add --no-cache vips-dev
ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}
WORKDIR /opt/
COPY --from=build /opt/node_modules ./node_modules
WORKDIR /opt/app
COPY --from=build /opt/app ./
ENV PATH /opt/node_modules/.bin:$PATH

RUN chown -R node:node /opt/app
USER node
EXPOSE 1337
CMD ["yarn", "start"]
