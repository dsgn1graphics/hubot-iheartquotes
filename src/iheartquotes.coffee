# Weather.coffee
# Description
#  Retrieve and respond with weather information for
#  the current geolocation target

module.exports = (robot) ->
  robot.respond /quote(\s|me\s+)?(.*)/i, (msg) ->
    parseQuery msg, msg.match[2], (quote) ->
      msg.send quote
      
  robot.respond /whats( my fortune)/i, (msg) ->
    parseQuery msg, msg.match[1], (quote) ->
      msg.send quote
      
  robot.respond /iheart\s?(.*)/i, (msg) ->
    parseQuery msg, 'iheart '+msg.match[1], (quote) ->
      msg.send quote
      

parseQuery = (msg, query, cb) ->
  if query.indexOf('iheart') > -1
    query = query.replace('iheart ','')
    getIheartQuote msg, query, cb
  else if query.indexOf('fortune') > -1
    getFortune msg, cb
  else
    query = query.replace('me ','')
    if query == ''
      query = 'joel_on_software+paul_graham+prog_style'
    if query == '-h' || query == 'help'
      getHelpTopics msg, cb
    getQuote msg, query, cb
  
getFortune = (msg, cb) ->
  q = format: 'json'
  msg.http('http://www.iheartquotes.com/api/v1/random')
    .query(q)
    .get() (err, res, body) ->
      quote = JSON.parse(body)
      cb quote.quote

getQuote = (msg, query, cb) ->
  q = format: 'json', source: query.replace(/\s/g,'_').replace(/(\||\+)/g,'+')
  msg.http('http://www.iheartquotes.com/api/v1/random')
    .query(q)
    .get() (err, res, body) ->
      quote = JSON.parse(body)
      if quote?.quote.length
        cb quote.quote
      else
        cb "What the hell is #{query}"

getIheartQuote = (msg, query, cb) ->
  heart_path = "http://icons.iconarchive.com/icons/designbolts/free-valentine-heart/16/Heart-icon.png"
  sad_face = "http://icons.iconarchive.com/icons/icojam/onebit/16/smiley-sad-icon.png"
  rtn_str = "#{heart_path}#{heart_path} Awww, isn't that sweet. Nobody cares that you heart #{query}! #{sad_face}"
  cb rtn_str
  
getHelpTopics = (msg, cb) ->
  help_topics = "Available help topics"
  cb help_topics
  
#  msg.http('http://www.iheartquotes.com/api/vi/random?format=json')
#   .get() ( err, res, body ) ->
#     console.log( body )
   