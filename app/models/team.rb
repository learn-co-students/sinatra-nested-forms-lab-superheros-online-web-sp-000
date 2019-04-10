class Team

  attr_accessor :name, :motto

  TEAMS = []

  def initialize(params)
    @name = params[:team][:name]
    @motto = params[:team][:motto]
    TEAMS << self
  end

  def self.all
    TEAMS
  end

end
