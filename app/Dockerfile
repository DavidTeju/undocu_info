FROM node:latest
LABEL authors="davidtejuosho"
WORKDIR /usr/local/app


COPY . .
ENV PORT=4173
RUN npm install
RUN npx prisma generate
RUN npm run build

EXPOSE 4173

CMD ["node","-r", "dotenv/config", "build"]