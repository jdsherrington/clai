# CLAI: Command Line Artificial Intelligence

This is a simple little shell script made for my own purposes.

To use it, you'll need to sign up to [OpenRouter](https://openrouter.ai/) and get an API key, then update your .bashrc, .zshrc, or equivalent with:

export OPENROUTER_API_KEY="your key here"

# Installation
Simply download the clai file and put it in /usr/local/bin/ or any other directory included in your $PATH.

Finally, just add an alias to your .bashrc/.zshrc along the lines of:
alias clai="noglob clai"

Although I'm currently just using the alias "ai".

Just source your .rc file and you should be good to go.

## Configuration
Upon first running the application, a clai directory in your default config location will be generated, along with a model file and system_prompt file. Simply update the model file to any OpenRouter model, and update your system prompt to whatever you wish. By default I've picked a free Llama model, so you can just get started right away without changing anything.


Usage: clai [OPTION]... [QUERY]

OPTIONS:
  -h, --help                    Show this help message and exit
  -r, --reply QUERY             Reply to the last response saved in the chat log directory
  -f, --file FILEPATH QUERY     Read content from a file and send to AI
  -s, --search PATTERN          Fzf search previous chat logs for a specific pattern

  clai                            Prompts the AI for a single inline response. Inline queries don't require quotation marks, but apostrophes are not supported. If no query is provided, Conversation Mode is entered.

ARGUMENTS:
  QUERY                         The query to ask the AI. Optional for no option and --file, mandatory for --reply. Excluding QUERY when optional will enter the dedicated Conversation Mode.
  FILE                          The path to the file that will be read by the AI; must be in a readable format, and file contents count towards input tokens.

EXAMPLES:
  clai What is the answer to life, the universe and everything?   # Basic inline query
  clai -r 42? Okay, then what is the question?                    # Reply to the last AI response
  clai -f path/to/myfile.txt What are some key takeaways?         # Read from a file and ask the AI; query optional
