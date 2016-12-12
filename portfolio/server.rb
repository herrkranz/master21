require 'sinatra'

get '/' do
  erb :home, layout: :application
end

get '/interactions/twint' do
  erb :project_twint, layout: :application
end
