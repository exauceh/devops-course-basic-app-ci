FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt 

COPY /src .

ENV PORT=8000
EXPOSE 8000
CMD ["python3", "use.py","52.95.110.1"]
