FROM python:3.7

RUN mkdir /app
WORKDIR /app
COPY . /app/
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "App.py"]
