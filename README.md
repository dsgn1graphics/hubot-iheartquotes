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

## Multiple Queries

hubot quote me [query|query|query]
- Appends multiple query string to the API resquest. Return a random quote from any of the topics supplied

## Example

- hubot> hubot quote me Joel on software|Paul Graham|prog style
- hubot> Don't diddle code to make it faster - find a better algorithm.
            - The Elements of Programming Style (Kernighan & Plaugher)

## Valid Queries

From geek: 
- esr 
- humorix_misc 
- humorix_stories 
- joel_on_software 
- macintosh 
- math 
- mav_flame 
- osp_rules 
- paul_graham 
- prog_style 
- subversion

From general: 
- 1811_dictionary_of_the_vulgar_tongue 
- codehappy 
- fortune 
- liberty 
- literature 
- misc 
- murphy 
- oneliners 
- riddles 
- rkba 
- shlomif 
- shlomif_fav stephen_wright

From pop: 
- calvin 
- forrestgump 
- friends 
- futurama 
- holygrail 
- powerpuff 
- simon_garfunkel 
- simpsons_cbg 
- simpsons_chalkboard 
- simpsons_homer 
- simpsons_ralph 
- south_park 
- starwars 
- xfiles

From religious: 
- bible 
- contentions 
- osho

From scifi: 
- cryptonomicon 
- discworld 
- dune 
- hitchhiker