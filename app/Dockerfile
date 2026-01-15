FROM node:24-slim
LABEL authors="David Tejuosho"
WORKDIR /usr/local/app

COPY package*.json ./
RUN npm install        
COPY . .
ENV PORT=4173
RUN npx prisma generate
RUN npm run build

EXPOSE 4173

CMD ["node","-r", "dotenv/config", "build"]