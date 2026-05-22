FROM node:24-alpine AS deps
LABEL authors="David Tejuosho"
WORKDIR /usr/local/app

RUN apk add --no-cache openssl

COPY package*.json ./
RUN npm ci --ignore-scripts

FROM node:24-alpine AS build
WORKDIR /usr/local/app

RUN apk add --no-cache openssl

ARG PUBLIC_SUPABASE_URL
ARG PUBLIC_SUPABASE_ANON_KEY
ARG PUBLIC_FILES_ROOT
ARG DATABASE_URL=postgresql://user:pass@localhost:5432/db

ENV PUBLIC_SUPABASE_URL=$PUBLIC_SUPABASE_URL
ENV PUBLIC_SUPABASE_ANON_KEY=$PUBLIC_SUPABASE_ANON_KEY
ENV PUBLIC_FILES_ROOT=$PUBLIC_FILES_ROOT
ENV DATABASE_URL=$DATABASE_URL

COPY --from=deps /usr/local/app/node_modules ./node_modules
COPY . .

ENV PORT=4173

RUN npx prisma generate
RUN npm run build
RUN npm run scripts:build

FROM node:24-alpine
WORKDIR /usr/local/app

RUN apk add --no-cache openssl

ENV NODE_ENV=production
ENV PORT=4173

COPY --from=build /usr/local/app/package*.json ./
COPY --from=build /usr/local/app/node_modules ./node_modules
COPY --from=build /usr/local/app/build ./build
COPY --from=build /usr/local/app/prisma ./prisma
COPY --from=build /usr/local/app/dist-scripts ./dist-scripts
# emailRenderers.ts loads templates via __dirname/../templates; with bundled
# scripts at dist-scripts/, the templates folder must sit one level up.
COPY --from=build /usr/local/app/scripts/templates ./templates

EXPOSE 4173

CMD ["node", "-r", "dotenv/config", "build"]
