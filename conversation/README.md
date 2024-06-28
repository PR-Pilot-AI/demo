# 💬 Conversation

In some situations, a back-and-forth conversation may be the best **mode of interaction** between you and PR Pilot:
- You're unsure about something and would like to **ask** a question
- You want to create a task, but are **not sure** how to phrase it or where to begin
- You want to **understand** a concept or feature in more detail

PR Pilot is here to help you in these scenarios. 

## 🛠️ How it works

You can start a conversation by running the following command:

```shell
➜  conversation git:(main) ✗ pilot chat
Starting a new conversation on PR-Pilot-AI/demo

You: 
```

Just like tasks, conversations always run in the context of a repository.
When you're done with the conversation, just hint `Enter` to save the chat history to a file:

```shell
You: 
Do you want to save the chat history as a JSON file? [y/n] (n): y
Enter the file path to save the chat history: my_conversation.json
Chat history saved to my_conversation.json
```

### 📚 Saving and Sharing Conversations 
Once saved, you can share the chat history with others or refer back to it later.
Simply continue any conversation using the `--history` flag:
  
`pilot chat --history my_conversation.json`

When you're done, the conversation will automatically be saved to the same file.

## Example Output

We've started a simple conversation in [chat.json](chat.json) to help you get started. 
Feel free to continue the conversation:

```shell
➜  conversation git:(main) ./run.sh 
Continuing conversation from chat.json on PR-Pilot-AI/demo

You: What do you know about this project?
                                                                                                                                                                                                           
  This project is a collection of demos and examples showcasing the features and capabilities of PR Pilot, an AI tool designed to assist users in their daily workflow. Each demo is organized into        
  sub-directories (e.g., pr-description) and includes a README.md and run.sh file. The README.md provides guidance and explains the use case and benefits, while the run.sh file uses the CLI to           
  implement the demo use case. The project emphasizes a friendly, personal tone with engaging elements like emojis and highlights key words for easy scanning. PR Pilot aims to save time and help users   
  stay in the flow by allowing them to delegate routine tasks to AI through prompts.                                                                                                                       
                                                                                                                                                                                                           
You: Which demos do we have in here?
                                                                                                                                              
  Here are the demos available in this project:                                                                                               
                                                                                                                                              
   • 📊 analyze-test-results                                                                                                                  
   • 🛠️ config-file-madness                                                                                                                    
   • 💬 conversation                                                                                                                          
   • 📅 daily-report                                                                                                                          
   • 🕹️ game-of-life                                                                                                                           
   • 📝 generate-dummy-content                                                                                                                
   • 📈 generate-rank-select                                                                                                                  
   • 🐞 instant-bug-ticket                                                                                                                    
   • 🔍 multi-search                                                                                                                          
   • 📝 pr-description                                                                                                                        
   • 💡 prompts                                                                                                                               
   • ✅ quality-gate                                                                                                                          
   • 🖼️ screenshot-to-code                                                                                                                     
   • 🗺️ step-by-step-plan                                                                                                                      
   • 🎨 style-guidelines                                                                                                                      
                                                                                                                                              
  Each demo showcases different features and capabilities of PR Pilot, helping you understand how to leverage the tool in various scenarios.  
                                                                                                                                              
You: 
Chat history saved to chat.json

```