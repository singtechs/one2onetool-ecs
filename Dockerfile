FROM dulcet/ubuntu-docker-node:latest
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
EXPOSE 3000
USER jenkins
CMD node index.js
