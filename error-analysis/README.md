# 🐛 Error Analysis with Sentry
Sentry is a popular error tracking tool that helps developers monitor and fix crashes in real-time. 
By integrating PR Pilot with Sentry, error analysis becomes a breeze.

## Prerequisites
- A [Sentry](https://sentry.io) account
- A project set up on Sentry
- Sentry integration enabled in PR Pilot

## 🛠️ How it works
A convenient way to do this is to **start a chat** with PR Pilot:

```shell
➜  error-analysis git:(main) ✗ ./run.sh
╭──────────────── You ─────────────────╮
│ Find all unresolved issues on Sentry │
╰──────────────────────────────────────╯
                                                                                                                                
  I found 14 unresolved issues on Sentry for the python-django project. Here are some of them:                                  
                                                                                                                                
   1 Error searching Sentry issues: 400 Client Error: Bad Request for url: https://sentry.io/api/0/pro...                       
      • ID: 5551588934                                                                                                          
      • URL: Link                                                                                                               
      • Count: 2                                                                                                                
      • First Seen: 2024-06-29T04:01:48.208162Z                                                                                 
      • Last Seen: 2024-06-29T04:01:51.131428Z                                                                                  
   2 IndexError: list index out of range                                                                                        
      • ID: 5459092301                                                                                                          
      • URL: Link                                                                                                               
      • Count: 2                                                                                                                
      • First Seen: 2024-06-06T18:03:24.793070Z                                                                                 
      • Last Seen: 2024-06-27T19:26:39.889151Z                                                                                  
   3 {'errors': [{'message': 'Operation error', 'extensions': {'code': 'INPUT_ERROR', 'type': 'invalid...                       
      • ID: 5541757021                                                                                                          
      • URL: Link                                                                                                               
      • Count: 2                                                                                                                
      • First Seen: 2024-06-27T01:33:22.298160Z                                                                                 
      • Last Seen: 2024-06-27T01:35:26.344895Z                                                                                  
   4 Error searching Linear workspace: Operation error                                                                          
      • ID: 5541756956                                                                                                          
      • URL: Link                                                                                                               
      • Count: 2                                                                                                                
      • First Seen: 2024-06-27T01:33:22.273787Z                                                                                 
      • Last Seen: 2024-06-27T01:35:24.515479Z                                                                                  
   5 BadRequestError: Error code: 400 - {'error': {'message': "This model's maximum context length is 16385 tokens. How...      
      • ID: 5520706968                                                                                                          
      • URL: Link                                                                                                               
      • Count: 16                                                                                                               
      • First Seen: 2024-06-22T02:42:18.355965Z                                                                                 
      • Last Seen: 2024-06-22T05:11:32.691311Z                                                                                  
                                                                                                                                
  For more details, you can visit the Sentry dashboard.                                                                         
```

We found some issues, **let's pick one and investigate** further:

```shell                                                                                                                                
╭───────────────── You ──────────────────╮
│ Check out the events of the IndexError │
╰────────────────────────────────────────╯
                                                                                                           
  I found 2 events for the IndexError: list index out of range issue (ID: 5459092301):                     
                                                                                                           
   1 Event Timestamp: 2024-06-27T19:26:39Z                                                                 
      • Message: Failed to run task                                                                        
      • Location: engine/agents/web_search_agent.py                                                        
      • Culprit: engine.agents.web_search_agent in scrape_website                                          
   2 Event Timestamp: 2024-06-06T18:03:24Z                                                                 
      • Message: Failed to run task                                                                        
      • Location: engine/agents/web_search_agent.py                                                        
      • Culprit: engine.agents.web_search_agent in scrape_website                                          
                                                                                                           
  For more details, you can visit the Sentry issue page.                                                   

```

Seems like there's something wrong with how we scrape websites. PR pilot can **find and fix the relevant code**:

```shell
                                                                                                           
╭──────────────────────────── You ────────────────────────────╮
│ Find the relevant code, analyze the issue and provide a fix │
╰─────────────────────────────────────────────────────────────╯
                                                                                                                                                                                                           
  I have analyzed the IndexError: list index out of range issue in the scrape_website function and applied a fix. The issue was caused by attempting to access the first element of                        
  docs_transformed[0].page_content without checking if it was empty. I added a check to ensure that docs_transformed[0].page_content is not empty before accessing its elements.                           
                                                                                                                                                                                                           
  The updated scrape_website function now looks like this:                                                                                                                                                 
                                                                                                                                                                                                           
                                                                                                                                                                                                           
   @tool                                                                                                                                                                                                   
   def scrape_website(url: str):                                                                                                                                                                           
       """Scrape a website."""                                                                                                                                                                             
       TaskEvent.add(actor="Darwin", action="scrape", target=url, transaction="begin")                                                                                                                     
       urls = [url]                                                                                                                                                                                        
       loader = AsyncHtmlLoader(urls)                                                                                                                                                                      
       docs = loader.load()                                                                                                                                                                                
       html2text = Html2TextTransformer()                                                                                                                                                                  
       docs_transformed = html2text.transform_documents(docs)                                                                                                                                              
                                                                                                                                                                                                           
       if docs_transformed and docs_transformed[0].page_content:                                                                                                                                           
           return docs_transformed[0].page_content[0:700]                                                                                                                                                  
       else:                                                                                                                                                                                               
           logger.error(f"Failed to scrape content from {url}")                                                                                                                                            
           return "Failed to scrape content"                                                                                                                                                               
                                                                                                                                                                                                           
                                                                                                                                                                                                           
  This fix ensures that we only attempt to access docs_transformed[0].page_content[0:700] if it is not empty, preventing the IndexError.                                                                   
                                                                                                                                                                                                           
  The changes have been committed to the codebase.                                                                                                                                                         

```