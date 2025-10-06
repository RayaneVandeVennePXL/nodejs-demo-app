# 1️⃣ Basis image
FROM node:18-alpine

# 2️⃣ Werkdirectory instellen
WORKDIR /app

# 3️⃣ Package.json en package-lock.json kopiëren
COPY package*.json ./

# 4️⃣ Dependencies installeren
RUN npm install --production

# 5️⃣ Rest van de code kopiëren
COPY . .

# 6️⃣ Build (optioneel)
RUN npm run build

# 7️⃣ Poort openzetten (dezelfde als je app luistert)
EXPOSE 3000

# 8️⃣ Start commando
CMD ["node", "src/server.js"]

