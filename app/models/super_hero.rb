class SuperHero
  attr_accessor :name, :power, :bio
  attr_reader :team

  def initialize(params)
    self.name = params[:name]
    self.power = params[:power]
    self.bio = params[:biography]
  end

  def team=(team)
    @team = team
    team.members << self
  end
end
