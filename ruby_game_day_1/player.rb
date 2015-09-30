require_relative "static_object"

class Player < StaticObject
	def move(x,y)
		@x,@y = @x+x, @y+y
	end
end