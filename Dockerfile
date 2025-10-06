FROM node:18 
WORKDIR /app 
COPY . . 
CMD ["npm", "install"]
EXPOSE 5000
CMD ["npm","start"]
