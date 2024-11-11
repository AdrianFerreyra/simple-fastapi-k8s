from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def return_message():
    return {"message": "Hello world!"}
