# Hubot-iHeartQuotes

iHeartQuotes.com API wrapper for Hubot

## Usage

hubot whats my fortune
- Returns a random daily fortune

hubot quote
- Return a random quote from the following predetermined categories
  -- Joel on software
  -- Paul Graham
  -- prog style [programming style]
  
hubot quote me [query]
- Return a random quote from the query string supplied

hubot iheart [query]
- Return a Hubot message

## Multiple Querys

hubot quote me [query|query|query]
- Appends multiple query string to the API resquest. Return a random quote from any of the topics supplied

## Example

- hubot> hubot quote me Joel on software|Paul Graham|prog style
- hubot> Don't diddle code to make it faster - find a better algorithm.
            - The Elements of Programming Style (Kernighan & Plaugher)
