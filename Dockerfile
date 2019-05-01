
FROM node:8.16.0-alpine
LABEL MAINTAINER=NasirK

COPY . /app
WORKDIR /app

EXPOSE 8080  

RUN apk upgrade --update \
  && apk add --no-cache build-base \
  && apk add bash \
  && apk add make \
  && npm i -g redoc-cli

CMD redoc-cli bundle -o ./docs/index.html specs/api.yml

#CMD npm i -g redoc-cli && make docs

#CMD touch /app/docs/index.html

#CMD npm install node
#CMD npx redoc-cli serve specs/api.yml

# Build:
# docker build -t customerservice:latest .

# Run:
# docker run -p 127.0.0.1:8181:8000/tcp --rm \
#        --name customerservice -t customerservice:latest

# Stop:
# docker stop customerservice

# Debug:
# docker run -it customerservice:latest sh
# or
# docker run -it customerservice:latest bash