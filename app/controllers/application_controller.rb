require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do

      @team=Team.new(params[:team])
      @hero_1=Hero.new(params[:member1_name],params[:member1_power],params[:member1_bio])
      @hero_2=Hero.new(params[:member2_name],params[:member2_power],params[:member2_bio])
      @hero_3=Hero.new(params[:member3_name],params[:member3_power],params[:member3_bio])
      erb :team

    end



end
