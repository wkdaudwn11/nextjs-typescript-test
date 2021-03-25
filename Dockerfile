FROM node:alpine
WORKDIR /usr/app
ENV NODE_ENV=production
RUN npm install --global pm2
COPY ./package.json ./
RUN npm install --production && npm cache clean --force
COPY ./ ./
RUN npm run build
EXPOSE 3000
USER node
CMD [ "pm2-runtime", "start", "npm", "--", "start" ]