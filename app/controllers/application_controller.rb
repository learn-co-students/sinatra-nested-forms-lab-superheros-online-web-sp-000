require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'../views/super_hero'
    end

    # post '/teams' do
    #   @teams = Team.new(name: params[:team][:name], motto: params[:team][:motto])
    #   members = params[:team][:members]
    #   @super_heroes = members.collect do |member|
    #     SuperHero.new({name: member[:name], power: member[:power], bio: member[:bio]})
    #   end
    #   erb :team
    # end

    post '/teams' do
      @team_name = params["team"]["name"]
      @team_motto = params["team"]["motto"]
      @team_members = params["team"]["members"]

      erb :'../views/team'
    end

end
