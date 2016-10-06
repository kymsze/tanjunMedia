# myapp.rb
require 'sinatra'

get '/' do
  erb :"pages/home"
end

get '/work/:name' do
  erb :"pages/#{params['name']}"
end

