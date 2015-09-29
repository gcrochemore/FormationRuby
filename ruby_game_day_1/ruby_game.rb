
require 'io/console'

def draw(rows_max = 10,cols_max = 10, player = {:x=>1,y:1})
	puts "On affiche un plateau de #{rows_max} lignes et #{cols_max} colonnes"
	puts "Le joueur est en position #{player[:x]}/#{player[:y]}"
	(1..rows_max.to_i).each do |j|
		(1..cols_max.to_i).each do |i|
			(player[:x] == i && player[:y] == j) ? print("\033[34mP\033[0m ") : print("\033[10mX\033[0m ")
		end
		puts
	end
end

r = 10
c = 10
x = 1
y = 1
unless ARGV.empty?
	r = ARGV[0]
	c = ARGV[1]
	x = ARGV[2].to_i
	y = ARGV[3].to_i
end

draw r,c,x:x,y:y

quit = false

while !quit

	puts "Que voulez-vous faire ? z (HAUT) - q (GAUCHE) - s (BAS) - d (DROITE) - p (QUITTER)"
	touche = STDIN.getch.to_s
	puts "la touche est #{touche}"

	diff_x = 0
	diff_y = 0
	case touche
	when "z"
	  	diff_y = -1
	when "q"
	  	diff_x = -1
	when "s"
	  	diff_y = 1
	when "d"
	  	diff_x = 1
	when "p"
	  	quit = true
	else
	  "Je n'ai pas compris"
	end
	x = ((x+diff_x).to_i % c.to_i)+1
	y = ((y+diff_y).to_i % r.to_i)+1
	
	draw r,c,x:x,y:y
end

puts "A bientot"