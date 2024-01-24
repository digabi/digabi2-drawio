FROM node:18.17.0 AS deps

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm clean-install

FROM node:18.17.0 AS build

WORKDIR /app
COPY --from=deps /app/node_modules node_modules
COPY server server
COPY tsconfig.json .
RUN npx tsc --project server

FROM node:18.17.0

WORKDIR /app
COPY --from=deps /app/node_modules node_modules
COPY --from=build /app/dist dist
COPY bin bin
COPY index.html .
RUN mkdir -p drawio/src/main
COPY drawio/src/main/webapp drawio/src/main/webapp
ENTRYPOINT ["/app/bin/drawio"]
