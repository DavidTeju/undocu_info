FROM node:24-slim
LABEL authors="David Tejuosho"
WORKDIR /usr/local/app

# Install OpenSSL for Prisma (required on slim images)
RUN apt-get update && apt-get install -y openssl && rm -rf /var/lib/apt/lists/*

COPY package*.json ./
RUN npm ci --ignore-scripts
COPY . .

# Set default env vars for build (override at runtime)
ENV PORT=4173

RUN npx prisma generate
RUN npm run build

EXPOSE 4173

CMD ["node", "-r", "dotenv/config", "build"]
