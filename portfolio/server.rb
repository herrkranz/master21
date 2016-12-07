require 'sinatra'

get '/' do
  erb :home, layout: :layout
end

get '/interactions/twint' do
  erb :project_twint, layout: :layout
end
