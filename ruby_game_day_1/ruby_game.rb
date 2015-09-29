cols_max = 10
rows_max = 10
for j in (1..rows_max)
	for i in (1..cols_max)
		print "X "
	end
	puts
end

a=(3+3)
puts "a vaut " + a.to_s + " est " + a.class.to_s

a=(3+3)*99999*9999999
puts "a vaut " + a.to_s + " est " + a.class.to_s

test = false
i = 1073742000
while test==false
	if i.class == Bignum
		puts "Le premier Bignum est " + i.to_s
		test = true
	end
	i += 1
end

def hello_world(name = "World")
	puts "Hello #{name}"
end

hello_world("Guillaume")
hello_world