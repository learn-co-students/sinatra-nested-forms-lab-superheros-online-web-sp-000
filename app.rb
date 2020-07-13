require './environment'

# module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
       erb :super_hero
     end
     get '/new' do
       erb :'pirates/new'
     end
     post '/teams' do
       @team = Team.new(params[:team])
       params[:team][:member].each do |details|
         Member.new(details)
       end
       @members = Member.all

       erb :'team'
     end
  end
# end
