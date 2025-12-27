FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py test_app.py ./
COPY templates ./templates
# Run tests
RUN python -m unittest test_app.py
EXPOSE 5000
# Run app
CMD ["python", "app.py"]
