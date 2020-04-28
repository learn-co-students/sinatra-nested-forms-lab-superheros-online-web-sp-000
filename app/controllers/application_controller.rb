require 'sinatra/base'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end 

    post '/team' do
        @team=Team.new(params[:team])
        
        @hero_name1=params["team"]["member"][0]["name"]
        @hero_power1=params["team"]["member"][0]["power"]
        @hero_bio1=params["team"]["member"][0]["biography"]
        @hero_name2=params["team"]["member"][1]["name"]
        @hero_power2=params["team"]["member"][1]["power"]
        @hero_bio2=params["team"]["member"][1]["biography"]
        @hero_name3=params["team"]["member"][2]["name"]
        @hero_power3=params["team"]["member"][2]["power"]
        @hero_bio3=params["team"]["member"][2]["biography"]




        erb :team
    end 

end

#team=
#{"name"=>"X-Men", "motto"=>"All For One", "member"=>
#[{"name"=>"Firestar", "power"=>"Radio Blasts", "biography"=>"Its a bird, Its a plane"}, 
#{"name"=>"Superman", "power"=>"Flight and Super Strength", "biography"=>"Born on Farm"}, 
#{"name"=>"Bretten ", "power"=>"Radio Blasts", "biography"=>"A hothead"}]}

#team["member"][0]["name"]


