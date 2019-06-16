require 'sinatra/base'
require_all 'app'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end
    binding.pry


end
