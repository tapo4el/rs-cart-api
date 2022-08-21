FROM node:16-alpine
WORKDIR app
COPY * ./
RUN npm install
RUN npm run build
USER node
EXPOSE 4000
ENTRYPOINT ["node", "dist/main.js"]