require("sinatra")
require("sinatra/reloader")
require('./lib/find')
also_reload('lib/**/*.rb')

get ("/") do
  erb(:form)
end

post ("/find") do
  sentence = params.fetch("sentence")
  word = params.fetch("word")
  @find = sentence.find(word)
  erb(:find)
end
