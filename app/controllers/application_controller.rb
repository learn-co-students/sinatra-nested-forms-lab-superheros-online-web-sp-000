 require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do

        erb :"/team"
    end

    # get '/team' do
    #   erb :team
    # end

    post '/teams' do
      @team = params
      @team_name = params[:team][:name]
      @motto = params[:team][:motto]
      @member1_name = params[:team][:hero][0][:name]
      @member1_power = params[:team][:hero][0][:power]
      @member1_bio = params[:team][:hero][0][:biography]

      @member2_name = params[:team][:hero][1][:name]
      @member2_power = params[:team][:hero][1][:power]
      @member2_bio = params[:team][:hero][2][:biography]

      @member3_name = params[:team][:hero][2][:name]
      @member3_power = params[:team][:hero][2][:power]
      @member3_bio = params[:team][:hero][2][:biography]
      #  binding.pry
      erb :team
    end

    #
    get '/teams' do

      erb :team
    end

end
