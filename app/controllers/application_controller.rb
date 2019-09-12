require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @teams = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]
      @super_hero = members.collect do |member|
        SuperHero.new(name: params[member][name], power: params[member][power], bio: params[member][bio])
      end
      erb :team
    end

end
