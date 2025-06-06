from fastapi import FastAPI
from pydantic_models.chat_body import ChatBody
from services.search_service import SearchService
from services.sort_source_service import SortSourceService


app = FastAPI()

# @app.get("/")
# def hello_world():
#     return {"message": "Hello, World!"}


search_service = SearchService()
sort_source_service = SortSourceService()


#chat
@app.post("/chat")
def chat_endpoint(body: ChatBody):
    search_results = search_service.web_search(body.query)
    # print(search_results)
    sort_source_service.sort_sources(body.query, search_results)
    return body.query