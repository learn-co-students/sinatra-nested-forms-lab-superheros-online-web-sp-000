require 'pry'
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


  get '/' do
    erb :super_hero
  end

  post '/team' do
  @heroes = params[:team]
  # binding.pry
  erb :team
  end

end
