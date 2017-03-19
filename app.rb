# myapp.rb
require 'sinatra'
require 'sinatra/reloader' if development?
require 'Haml'

set :root, File.realpath(File.dirname(__FILE__))

get '/' do
  haml :index
end

get '/work/:name' do
  haml :"case-studies/#{params['name']}"
end

