require'pry'
class Superheros
attr_reader :name, :power, :bio
@@all=[] 
def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    @@all << self 
end

def save
@@all
  
end 
end 