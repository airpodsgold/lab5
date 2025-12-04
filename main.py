import functions_framework
from datetime import datetime

@functions_framework.http
def get_current_time(request):
    # Отримуємо поточний час
    now = datetime.now()

    # Повертаємо час у форматі JSON
    return f"Current time is: {now.strftime('%H:%M:%S')}"

