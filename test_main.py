from fastapi.testclient import TestClient
from main import app

client = TestClient(app)


def test_read_main():
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == {"message": "Wikipedia API. Call /search or /wiki"}

def test_search_wiki():
    response = client.get("/search/War_Goddess")
    assert response.status_code == 200

def test_wiki_logic():
    response = client.get("/wiki/War_Goddess")
    assert response.status_code == 200