FROM alpine
RUN apk update && apk add openjdk8 && apk add maven
WORKDIR /app
COPY . .
CMD java Hello.java
