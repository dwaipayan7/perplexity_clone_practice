from config import Settings

settings = Settings()
# This is a placeholder for the actual search service implementation.

class SearchService:
    def web_search(self, query: str):
        print(Settings().TAVILY_API_KEY)