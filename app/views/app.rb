require './config/environment'

class App < Sinatra::Base

  get '/' do
    erb :'/super_hero'
  end

  post '/teams' do
    @team = Team.new(params[:team])

    params[:team][:members].each do |details|
      Member.new(details)
    end
    @members = Member.all

    erb :team
  end

end
