FROM cypress/base:14.15.4

WORKDIR /app

COPY package.json /app
COPY package-lock.json /app

RUN npm ci

RUN npm run cy:verify
