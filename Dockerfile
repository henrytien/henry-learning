FROM node:latest
LABEL description="A dockerfile for build Docsify."
WORKDIR /docs
RUN npm install -g docsify-cli@latest --registry https://registry.npm.taobao.org docsify-cli@latest
EXPOSE 3000/tcp
ENTRYPOINT docsify serve .