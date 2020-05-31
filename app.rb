require './environment'
require_relative 'models/team.rb'
require_relative 'models/member.rb'

class App < Sinatra::Base

    get '/' do
        "Hello World"
        #erb :index
    end

    #get '/new' do
    #  erb :new
    #end    

    post '/teams' do
      @team = Team.new(params[:team])
 
      params[:team][:members].each do |details|
        Member.new(details)
      end
     
      @members = Member.all      
      erb :teams
    end     

  end
end