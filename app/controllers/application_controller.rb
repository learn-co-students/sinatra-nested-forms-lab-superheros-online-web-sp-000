require 'sinatra/base'
require'pry'
class App < Sinatra::Base
    set :views, Proc.new { File.join(root, "../views/") }
  
        get '/' do 
            erb :super_hero
           
        end
        post '/teams' do
            
            @team=Team.new(name: params[:team]{:name}, motto: params[:team][:motto])
            
            members=params[:team][:superhero]
            binding.pry
            
            membeers.each do |hero|
                
            Superheros.new({name: hero[:name], power: hero[:power], bio: hero[:bio]})
                
            end
            @super_heros = Superheros.all
          
            erb :team
          end
      end

  