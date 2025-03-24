FROM python:3.10-slim
# code will be starting direcoty  insided the container
WORKDIR /code 

COPY ./requirements.txt  ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./src ./src

# http://0.0.0.0:8080
# http://0.0.0.0:8080
#  instead http://127.0.0.0:8080
CMD ["uvicorn", "src.main:app","--host","0.0.0.0","--port","8080","--reload"]
# for docker usully we use  0.0.0.0 