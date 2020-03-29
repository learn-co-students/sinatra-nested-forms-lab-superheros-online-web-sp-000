class Team
	attr_accessor :name, :motto

	def initialize(attr)
		@name = attr[:name]
		@motto = attr[:motto]
	end
end