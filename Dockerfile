FROM node:20.15

WORKDIR /app

# Установка зависимостей
COPY package*.json ./
RUN npm install

# Копирование основного кода приложения
COPY . .

# Экспонирование порта 3000 внутри контейнера
EXPOSE 3000

# Запуск приложения
CMD ["node", "app.js"]