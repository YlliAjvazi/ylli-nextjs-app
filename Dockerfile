FROM node

WORKDIR /usr/ylli-nextjs-app 

COPY package*.json /usr/ylli-nextjs-app/

RUN npm install

COPY . /usr/ylli-nextjs-app

RUN  npm run build

COPY . /usr/ylli-nextjs-app

EXPOSE 3000

ENTRYPOINT  [ "npm", "run", "start" ]