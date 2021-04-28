require_relative 'config/environment'

class App < Sinatra::Base
  set :views, settings.root + '/4:26-4:30/sinatra-forms-params-readme-walkthrough/views'

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below
  post '/food' do
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}."
  end
end