FROM node:alpine
WORKDIR /usr/app
RUN npm install --global pm2
COPY ./package.json ./
RUN npm install && npm cache clean --force
COPY ./ ./
RUN npm run build
EXPOSE 3000
USER node
CMD [ "pm2-runtime", "start", "npm", "--", "start" ]