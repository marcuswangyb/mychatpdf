FROM node:alpine

WORKDIR /app

COPY package.json yarn.lock next.config.js /app/
COPY .next /app/.next
COPY node_modules /app/node_modules

EXPOSE 8091

ENTRYPOINT ["tail", "-f", "/dev/null"]
# CMD ["npm", "start"]