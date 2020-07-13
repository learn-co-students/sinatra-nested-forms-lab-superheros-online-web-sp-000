require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :"../views/super_hero"
  end

  get '/super_hero' do
    erb :"../views/super_hero"
  end

  get '/teams' do
   erb :"../views/team"
  end

  post '/teams' do

    @team = {
      :name => params[:team][:name],
      :motto => params[:team][:motto],
      :members =>
      [{:name =>params[:team][:members][0][:name],
        :power =>params[:team][:members][0][:power],
        :biography =>params[:team][:members][0][:biography]},
       {:name =>params[:team][:members][1][:name],
        :power =>params[:team][:members][1][:power],
        :biography =>params[:team][:members][1][:biography]},
       {:name =>params[:team][:members][2][:name],
        :power =>params[:team][:members][2][:power],
        :biography =>params[:team][:members][2][:biography]}
      ]}
    erb :"../views/team"
  end

end
