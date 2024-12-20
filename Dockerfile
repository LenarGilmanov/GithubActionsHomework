# Используем официальный образ node.js в качестве базового образа
FROM node:alpine

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем package.json и package-lock.json для установки зависимостей
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем все файлы приложения в рабочую директорию
COPY . .

# Указываем команду для запуска прилжоения 
CMD ["node", "app.js"]


# Открываем порт
EXPOSE 3000


