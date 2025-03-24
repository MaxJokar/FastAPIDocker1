from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello world , Monitoring Date :24.03.2025 , All is  Ok ...."}


