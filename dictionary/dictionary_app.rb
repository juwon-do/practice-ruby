user_input = 0
while 
  p "Enter a word(enter q to quit): "
  user_input = gets.chomp
  if user_input == "q"
    return
  end
  require "http"

  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/examples?includeDuplicates=false&useCanonical=false&limit=5&api_key=")

  response_pronunciation = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/pronunciations?useCanonical=false&limit=50&api_key=")

  response_audio = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/audio?useCanonical=false&limit=50&api_key=")

  examples = response.parse(:json)
  pronunciation = response_pronunciation.parse(:json)
  audio = response_audio.parse(:json)

  pp examples['examples'][0]['text']
  pp pronunciation[0]['raw']
  system("open", "#{audio[0]['fileUrl']}")
end