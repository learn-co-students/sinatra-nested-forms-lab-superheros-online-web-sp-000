require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
      erb :super_hero
    end

    post '/new' do


    @team=  Team.new(name: params[:team][:name],motto: params[:team][:motto])

      params[:team][:members].each do |m|
        Hero.new(m)
      end

      # binding.pry

      @heros= Hero.all

      erb  :team
    end

end