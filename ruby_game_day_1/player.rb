class Player
	attr_accessor :x, :y

	def initialize(x = 1,y=1)
		@x = x
		@y = y
	end

	def move(x,y)
		@x = @x+x
		@y = @y+y
	end
end