class Player
	attr_accessor :x, :y

	def initialize(x = 1,y=1)
		@x,@y = x,y
	end

	def move(x,y)
		@x,@y = @x+x, @y+y
	end
end