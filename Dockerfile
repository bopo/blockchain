FROM python:3.6-alpine

# Install dependencies.
ADD requirements.txt /app
RUN pip install -r /app/requirements.txt

# Add actual source code.
ADD blockchain.py /app
ADD main.py /app

EXPOSE 5000

WORKDIR /app

CMD ["python", "main.py", "--port", "5000"]
