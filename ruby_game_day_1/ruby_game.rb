cols_max = 10
rows_max = 10
cols_index = 0
rows_index = 0
while rows_index < rows_max
	for i in (1..cols_max)
		print "X "
		cols_index += 1
	end
	puts
	rows_index += 1
	cols_index = 0
end