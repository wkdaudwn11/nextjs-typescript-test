FROM node:alpine
WORKDIR /usr/app
RUN npm install --global pm2
COPY ./package.json ./
RUN npm install --production && npm cache clean --force
COPY ./ ./
ENV NODE_ENV=production
RUN npm run build
EXPOSE 3000
USER node
CMD [ "pm2-runtime", "start", "npm", "--", "start" ]