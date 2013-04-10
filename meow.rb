#author: jack zhou
#Ruby version of bunny1 by ccheever #https://github.com/ccheever/bunny1


require 'sinatra'

get '/' do
	"Welcome to meowlol\n"
	"<a href=\"javascript:window.external.AddSearchProvider\(\'http:\/\/meowlol.heroku.com\/meow\_opensearch\'\);\">click here to install<\/a>"

end



get '/hello/:name' do
	"Hello #{params[:name]}"

end

get '/meow/:url' do
	redirect to("http://google.com/search?q=#{params[:url]}")
end

get '/install' do
  	"<a href=\"javascript:window.external.AddSearchProvider\(\'https:\/\/bunnylol.facebook.net\/?\_opensearch\'\);\">click here to install<\/a>"
end



get '/files/:path' do 
	"#{params[:path]}"
	File.open(params[:path]).each_line do |line| line end
end
