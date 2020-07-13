require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end
  
    post '/teams' do
      @team = params
      binding.pry
      erb :show
    end
  end
end
