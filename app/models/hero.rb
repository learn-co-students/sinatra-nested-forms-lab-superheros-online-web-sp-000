class Hero
	attr_accessor :name, :power, :biography

	@@all = []

	def initialize(attr)
		@name = attr[:name]
		@power = attr[:power]
		@biography = attr[:biography]

		@@all << self
	end
end