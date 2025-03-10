# CLAI - Command Line Artifical Intelligence
Just a simple script made for my own purposes to connect to the OpenRouter API. To use, just sign up for OpenRouter, grab an API key, then set the env variable OPENROUTER_API_KEY on your system.

## Installation
Download clai.sh, plop it into /usr/local/bin/ (or any other directory included in your $PATH), then rename it to remove the .sh from the end. You'll also need to add the following alias to your .rc file:

alias clai="noglob clai"
OR
alias ai="noglob clai"

Source your .rc file and you should be good to go.

## Configuration 
Upon first running the clai script some required files and directories will be created in your default config directory, under the clai folder simply edit "model" to whichever OpenRouter model you want to use, and update "system_prompt" for finer control over the output. By default the mode is set to a free Llama model.

```
Usage: ai [OPTION]... [QUERY]

A Command Line tool to interact with AI.

OPTIONS:
  -h, --help                    Show this help message and exit
  -r, --reply QUERY             Reply to the last response saved in the chat log directory
  -f, --file FILEPATH QUERY     Read content from a file and send to the AI
  -s, --search PATTERN          Fzf search previous chat logs for a specific pattern
  -m, --model                   Select the OpenRouter AI model to use (default: "meta-llama/llama-3.2-3b-instruct:free")
  -v, --version                 Show version information

  ai                            Prompts the AI for a single inline response. Inline queries don't require quotation marks, but apostrophes are not supported. If no query is provided, Conversation Mode is entered.

ARGUMENTS:
  QUERY                         The query to ask the AI. Optional for no option and --file, mandatory for --reply. Excluding QUERY when optional will enter the dedicated Conversation Mode.
  FILE                          The path to the file that will be read by the AI; must be in a readable format, and file contents count towards input tokens.

EXAMPLES:
  ai What is the answer to life, the universe and everything?   # Basic inline query
  ai -r 42? Okay, then what is the question?                    # Reply to the last AI response
  ai -f path/to/myfile.txt What are some key takeaways?         # Read from a file and ask the AI; query optional
  ai -m gpt-3.5-turbo                                           # Switches the AI model being prompted
```
