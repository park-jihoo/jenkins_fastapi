from fastapi import FastAPI
import uvicorn

app = FastAPI()


@app.get("/{name}")
def read_root(name: str):
    return {"Hi": name}


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
