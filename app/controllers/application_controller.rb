require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :'team'
    end

    post '/teams' do 
        # binding.pry
        @team = params

        erb :'super_hero'
    end
end

# If value does not equal hash, then iterate through list
# If member1_name equals member1_name then run the code