FROM node

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY package.json /opt/app/
RUN npm install && npm install -g nodemon

CMD ["nodemon", "app"]