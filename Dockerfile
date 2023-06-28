FROM node:14-alpine

WORKDIR /home/tlrtcfile

ADD . .

RUN npm conf set registry https://registry.npm.taobao.org; \
    npm install; \
    npm install -g pm2; \
    cd /home/tlrtcfile/svr/build/webpack/ \
    npm install;

EXPOSE 9092 8444

CMD ["/bin/sh", "docker-entrypoint.sh"]
