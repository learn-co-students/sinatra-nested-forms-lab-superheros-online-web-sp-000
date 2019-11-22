require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :teams # super_hero would be rendered here
    end

    post '/teams' do

        binding.pry

        @team = Team.new(params['name'], params['power'], params['biography'])

        erb :super_hero # teams would be rendered here, check file names + match with path
    end

end
