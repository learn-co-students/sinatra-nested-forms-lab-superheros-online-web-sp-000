class Team
  attr_accessor :name, :motto
  @@all =[]
  def initialize(params)
    @name = params[:team][:name]
    @motto = params[:team][:motto]
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
end
