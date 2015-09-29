def draw(rows_max = 10,cols_max = 10)
	for j in (1..rows_max)
		for i in (1..cols_max)
			print "X "
		end
		puts
	end
end
puts "8*9"
draw(8,9)
puts "Par default"
draw
