require 'sinatra/base'

class Hero

    attr_accessor :name, :power, :bio

    def initialize(name, power, bio)
        @name = name
        @power = power
        @bio = bio
    end

end

class Team

    attr_accessor :name, :motto, :members

    def initialize(name, motto, members)
        @name = name
        @motto = motto
        @members = members
    end

end

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
        erb :super_hero
    end

    post "/teams" do
        hero_1 = Hero.new(params[:team][:members][0][:name], params[:team][:members][0][:power], params[:team][:members][0][:bio])
        hero_2 = Hero.new(params[:team][:members][1][:name], params[:team][:members][1][:power], params[:team][:members][1][:bio])
        hero_3 = Hero.new(params[:team][:members][2][:name], params[:team][:members][2][:power], params[:team][:members][2][:bio])
        @team = Team.new(params[:team][:name], params[:team][:motto], [hero_1, hero_2, hero_3])
        erb :team
    end

end
