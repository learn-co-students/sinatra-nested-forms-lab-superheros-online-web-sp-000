require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'../views/super_hero'
    end

    post '/teams' do
      # binding.pry
      @team = params[:team]
# binding.pry
      erb :'../views/team'
    end
end
