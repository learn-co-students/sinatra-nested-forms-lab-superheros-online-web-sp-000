require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]

      members.each do |m_params|
        SuperHero.new({name: m_params[:name], power: m_params[:power], bio: m_params[:bio]})
      end
      @super_heros = SuperHero.all

      erb :team
    end

end
