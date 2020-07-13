require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :teams # super_hero would be rendered here
    end

    post '/teams' do
     
      

        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]

        @team_members_names = []
        @team_members_biographies = []
        @team_members_powers = []

        params[:team][:hero].each do |hero|
            @team_members_names << hero[:name]
            @team_members_biographies << hero[:biography]
            @team_members_powers << hero[:power]
        end

        erb :super_hero # teams would be rendered here, check file names + match with path
    end

end
