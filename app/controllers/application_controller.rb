require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
      erb :super_hero
    end

    post '/filled' do
      team_info = params[:team]
      hero_info = params[:team][:super_hero]
      @hero_list = []
      @team = Team.new(team_info)
      hero_info.each do |hero|
        @hero_list<<Hero.new(hero)
      end
      # binding.pry


      erb :team
    end

end
