ARG REPO=504857465313.dkr.ecr.us-east-2.amazonaws.com/node:12
FROM ${REPO}

WORKDIR /usr/src/app

COPY package*.json ./
ENV NODE_ENV=production
RUN npm install
COPY . .

EXPOSE 8080
CMD ["node", "run.js"]
