require 'sinatra/base'

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.create(team_params(params))
    @heroes = make_heroes(params) #make three heroes.
    @heroes.each do  |hero| 
      hero.team = @team 
      hero.save
    end 
    erb :team
  end

  private
    def team_params(params)
      { :name => params[:team][:name],
        :motto => params[:team][:motto] }
    end

    def make_heroes(params)
      params[:team][:heroes].collect { |heroe_hash| Heroe.new(heroe_hash)}
    end
  

end
