require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :'index'
    end

    get '/teams' do
        
    end

    post '/teams' do
        @team = Team.new(params[:team])
        params[:team][:member].each do |member_param|
            member = Member.new(member_param)
        end
        @all_members = Member.all
        erb :team
    end

end
