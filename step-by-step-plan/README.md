# Step-by-step plan

TODO Explain PR Pilot's `plan` command 




# Example Output:

Result was this PR: https://github.com/PR-Pilot-AI/pr-pilot/pull/196

```shell
➜  pr-pilot git:(main) ✗ pilot plan prompts/generate-integration.yaml

Running Create a new PR Pilot Integration with 5 sub-tasks.
                                                                                                                                                                                                                                   
 We are adding a Sentry integration to PR Pilot. Users will be able to enter their API key in the dashboard and PR Pilot will use its agent tools to search the Sentry API for issues and events.                                  
                                                                                                                                                                                                                                   
 An integration is composed of the following:                                                                                                                                                                                      
                                                                                                                                                                                                                                   
  • A dashboard page with:                                                                                                                                                                                                         
     • An HTML template in dashboard/templates/integrations/                                                                                                                                                                       
     • A view controller in dashboard/views/integrations.py                                                                                                                                                                        
  • A Django model in accounts/models.py to store credentials                                                                                                                                                                      
  • A set of langchain agent tools in agents/integration_tools/                                                                                                                                                                    
                                                                                                                                                                                                                                   

                                                                                                                                                                                                                                   
 ( 1/5 ) Create Django model                                                                                                                                                                                                       
                                                                                                                                                                                                                                   
✔ Task created: fcb1ec67-0191-4a32-b356-7769fe9a5fe0                                                                                                                                                                               
╭──────────────────────────────────────────────────────── Result ────────────────────────────────────────────────────────╮
│                                                                                                                        │
│  • Added SentryIntegration model to accounts/models.py to store the Sentry API key.                                    │
│  • Created a new issue #195 to add a migration for the new model.                                                      │
│                                                                                                                        │
│ 🆕 PR #196                                                                                                             │
╰────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯

                                                                                                                                                                                                                                   
 ( 2/5 ) Update dashboard template                                                                                                                                                                                                 
                                                                                                                                                                                                                                   
✔ Task created: 3878ca3b-19fe-465f-9d27-f045b85f2650PR #196                                                                                                                                                                        
╭──────────────────────────────────────────────────────────────────── Result ────────────────────────────────────────────────────────────────────╮
│                                                                                                                                                │
│  • Read PR #196                                                                                                                                │
│  • Read dashboard/templates/integrations/slack.html and dashboard/templates/integrations/sentry.html                                           │
│  • Updated dashboard/templates/integrations/sentry.html to include a form for the API key and a delete button if an API key is already stored  │
╰────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯

                                                                                                                                                                                                                                   
 ( 3/5 ) Update view controller                                                                                                                                                                                                    
                                                                                                                                                                                                                                   
✔ Task created: 34d838d7-2aab-43dd-8edb-f63108d83619PR #196                                                                                                                                                                        
╭───────────────────────────────────────────────────────────── Result ─────────────────────────────────────────────────────────────╮
│                                                                                                                                  │
│  • Read PR #196                                                                                                                  │
│  • Read dashboard/views/integrations.py                                                                                          │
│  • Updated IntegrationView class in dashboard/views/integrations.py to handle the Sentry API key form submission and deletion    │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯

                                                                                                                                                                                                                                   
 ( 4/5 ) Create agent tools                                                                                                                                                                                                        
                                                                                                                                                                                                                                   
✔ Task created: 12fa6a5c-cd78-40cf-828a-b693e62b3a0ePR #196                                                                                                                                                                        
╭─────────────────────────────────────── Result ────────────────────────────────────────╮
│                                                                                       │
│  • Read PR #196                                                                       │
│  • Read engine/agents/integration_tools/slack_tools.py                                │
│  • Implemented Sentry agent tools in engine/agents/integration_tools/sentry_tools.py  │
│  • Wrote unit tests for the new tools in engine/agents/tests/test_sentry_tools.py     │
│  • Updated engine/agents/integration_tools/__init__.py to register the new tools      │
╰───────────────────────────────────────────────────────────────────────────────────────╯

                                                                                                                                                                                                                                   
 ( 5/5 ) Create PR title and description                                                                                                                                                                                           
                                                                                                                                                                                                                                   
✔ Task created: e3a519ed-a81b-43a9-9c2a-7cf9ddd637faPR #196                                                                                                                                                                        
╭────────────────────────────────────────── Result ───────────────────────────────────────────╮
│                                                                                             │
│  • Read PR #196                                                                             │
│  • Created a new PR title: "✨ Add Sentry Integration to PR Pilot"                          │
│  • Updated the PR description to explain the purpose of the integration and the changes     │
│    made                                                                                     │
│                                                                                             │
│ Link to PR #196 Branch name: create-django-model-for                                        │
╰─────────────────────────────────────────────────────────────────────────────────────────────╯

```