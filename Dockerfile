# Використовуємо офіційний образ Python
FROM python:3.13-slim

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо requirements.txt для встановлення залежностей
COPY requirements.txt .

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо файли додатку до контейнера
COPY . .

# Відкриваємо порт 8080
EXPOSE 8080

# Запускаємо функцію через functions-framework
CMD ["functions-framework", "--target", "get_current_time"]
