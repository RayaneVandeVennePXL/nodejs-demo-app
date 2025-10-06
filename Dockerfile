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

# 6️⃣ Build (optioneel als je een build script hebt)
RUN npm run build

# 7️⃣ Poort openzetten (optioneel, bv als je server draait)
EXPOSE 80

# 8️⃣ Start commando
CMD ["node", "src/index.js"]
