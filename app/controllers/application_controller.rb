require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
		erb :super_hero    	
    end

    post '/super_hero' do
    	# binding.pry
    	@team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
    	# binding.pry
    	params[:team][:members].each { |member|
    		Member.new(member)
    	}
    	@members = Member.all

		erb :team    	
    end

end
