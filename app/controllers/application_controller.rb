require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :create_form
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @member_1_name = params[:team][:members][0][:name]
      @member_1_power = params[:team][:members][0][:power]
      @member_1_bio = params[:team][:members][0][:bio]
      @member_2_name = params[:team][:members][1][:name]
      @member_2_power = params[:team][:members][1][:power]
      @member_2_bio = params[:team][:members][1][:bio]
      @member_3_name = params[:team][:members][2][:name]
      @member_3_power = params[:team][:members][2][:power]
      @member_3_bio = params[:team][:members][2][:bio]
      erb :super_hero
    end

end
