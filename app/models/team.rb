class Team
  attr_accessor :name, :motto


  def initialize(details)
    @name = details[:name]
    @motto = details[:motto]
  end

end
