FROM node:14.15.4
# Folder inside container where the app will be located
WORKDIR /app
COPY ["package.json", "package-lock.json", "./"]
RUN npm install
COPY . .
CMD [ "npm", "start" ]
