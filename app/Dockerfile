FROM node:24-alpine AS deps
LABEL authors="David Tejuosho"
WORKDIR /usr/local/app

RUN apk add --no-cache openssl

COPY package*.json ./
RUN npm ci --ignore-scripts

FROM node:24-alpine AS build
WORKDIR /usr/local/app

RUN apk add --no-cache openssl

COPY --from=deps /usr/local/app/node_modules ./node_modules
COPY . .

ENV PORT=4173

RUN npx prisma generate
RUN npm run build

FROM node:24-alpine
WORKDIR /usr/local/app

RUN apk add --no-cache openssl

ENV NODE_ENV=production
ENV PORT=4173

COPY --from=build /usr/local/app/package*.json ./
COPY --from=build /usr/local/app/node_modules ./node_modules
COPY --from=build /usr/local/app/build ./build
COPY --from=build /usr/local/app/prisma ./prisma
COPY --from=build /usr/local/app/scripts ./scripts

EXPOSE 4173

CMD ["node", "-r", "dotenv/config", "build"]
