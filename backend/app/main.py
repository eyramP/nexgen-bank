from fastapi import FastAPI

app = FastAPI(
    title="Nexgen Bank",
    description="Fully featured banking API built with FastAPI"
)

@app.get("/")
def home():
    return {
        "message": "Welcome to the NexGen Bank API"
    }