require 'sinatra'

get '/' do
  @name = %w(fuck you dude).sample
  erb :index
end

get '/secret' do
  'This is a secret page'
end

get '/hello' do
  @visitor = params[:name]
  erb :index
end

get '/berry' do
  erb :berry
end
