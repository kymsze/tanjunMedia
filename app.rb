# myapp.rb
require 'sinatra'
require 'sinatra/reloader' if development?

set :root, File.realpath(File.dirname(__FILE__))

before do
  cache_control :public, :max_age => 86400, :expires => 86400
end

get '/' do
  haml :index
end

get '/work/:name' do
  haml :"case-studies/#{params['name']}"
end

