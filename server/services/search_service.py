from config import Settings
from tavily import TavilyClient
import trafilatura

settings = Settings()
# This is a placeholder for the actual search service implementation.

tavily_client = TavilyClient(api_key=settings.TAVILY_API_KEY)

class SearchService:
    def web_search(self, query: str):
        # print(Settings().TAVILY_API_KEY)
        results = []
        response = tavily_client.search(query, max_results=10)

        search_results = (response.get("results", []))

        for result in search_results:
           downloaded = trafilatura.fetch_url(result.get("url"))
           content = trafilatura.extract(downloaded, include_comments=False)

           results.append({
                "title": result.get("title"),
                "url": result.get("url"),
                "content": content
           })

        return results   