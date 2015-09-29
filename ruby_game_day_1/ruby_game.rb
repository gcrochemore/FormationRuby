def draw(rows_max = 10,cols_max = 10, player = {:x=>1,:y=>1})
	puts "On affiche un plateau de #{rows_max} lignes et #{cols_max} colonnes"
	puts "Le joueur est en position #{player[:x]}/#{player[:y]}"
	for j in (1..rows_max.to_i)
		for i in (1..cols_max.to_i)
			if player[:x] == j && player[:y] == i 
				print "\033[34mP\033[0m "
			else
				print "\033[10mX\033[0m "
			end
		end
		puts
	end
end


if !ARGV.empty?
	draw(ARGV[0],ARGV[1],{:x=>ARGV[2].to_i,:y=>ARGV[3].to_i})
else
	draw
end