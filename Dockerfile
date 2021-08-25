FROM cypress/base:14.15.4

WORKDIR /

COPY package.json /
COPY package-lock.json /

RUN npm ci

RUN npm run cy:verify
