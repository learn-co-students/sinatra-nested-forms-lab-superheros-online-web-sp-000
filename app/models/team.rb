class Team
  attr_accessor :name, :motto, :members
  def initialize(params)
    self.name = params[:name]
    self.motto = params[:motto]
    self.members = []
  end


end
