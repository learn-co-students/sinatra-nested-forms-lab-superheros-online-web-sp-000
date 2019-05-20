require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero
    end 
    
    post '/teams' do 
     
     @team_name = params["team"]["name"]
     @team_motto = params["team"]["motto"]
     @team_members = params["team"]["members"]
     
     @member1_name = params["team"]["members"][0]["hero_name"]
     @member1_power = params["team"]["members"][0]["power"]
     @member1_bio = params["team"]["members"][0]["bio"]
     
     @member2_name = params["team"]["members"][1]["hero_name"]
     @member2_power = params["team"]["members"][1]["power"]
     @member2_bio = params["team"]["members"][1]["bio"]
     
     @member3_name = params["team"]["members"][2]["hero_name"]
     @member3_power = params["team"]["members"][2]["power"]
     @member3_bio = params["team"]["members"][2]["bio"]
     
 
      
     
       
     
     
      
            
      #   @ = Pirate.new(params[:pirate])

      # params[:pirate][:ships].each do |details|
      #   Ship.new(details)
      # end
      # @ships = Ship.all
      
      erb :team
      
    end 

end
