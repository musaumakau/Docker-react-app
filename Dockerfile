FROM node:18.6.0-alpine3.15
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
ENV API_URL=htpp://api.myapp.com/
EXPOSE 3000
CMD [ "npm" , "start" ]