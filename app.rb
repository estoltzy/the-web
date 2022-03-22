require 'sinatra'
require 'sinatra/reloader' if development?

get '/cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb :index
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end