from fastapi import FastAPI

def test_happy_path_name_returns_hello_name(self):
    app = FastAPI()
    response = app.get("/John")
    assert response.status_code == 200
    assert response.json() == {"Hello": "John"}

