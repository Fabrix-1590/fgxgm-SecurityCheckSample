FROM node:20.11-bookworm-slim › zlib/zlib1g@1:1.2.13.dfsg-1 
node@20.11-bookworm-slim › glibc/libc-bin@2.36-9+deb12u3 
     glibc/libc-bin@2.36-9+deb12u3 and glibc/libc6@2.36-9+deb12u3
     tar@1.34+dfsg-1.2 

RUN npm install -g npm@9.1.3

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
