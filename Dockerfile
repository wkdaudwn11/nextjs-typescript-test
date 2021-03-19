# Build environment
FROM node:alpine
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
RUN npm install --global pm2
COPY ./package.json /app
RUN npm install
COPY . /app
RUN npm run build
EXPOSE 3000
USER node
CMD [ "pm2-runtime", "npm", "--", "start" ]

# Production environment
# FROM nginx:alpine
# RUN rm -rf /etc/nginx/conf.d
# COPY conf /etc/nginx
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]