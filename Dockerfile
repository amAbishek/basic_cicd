FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py test_app.py ./

# Run tests
RUN python -m unittest test_app.py

# Run app
CMD ["python", "app.py"]
