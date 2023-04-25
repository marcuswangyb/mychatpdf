FROM node:alpine

WORKDIR /app

ADD app.tar.gz /app/

EXPOSE 8091

# ENTRYPOINT ["tail", "-f", "/dev/null"]
CMD ["npm", "start"]
