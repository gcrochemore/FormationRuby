require 'io/console'
require_relative "player"
require_relative "jeu"


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

player = Player.new(x,y)
jeu = Jeu.new(r,c,player)
jeu.draw

quit = false

while !quit

	puts "Que voulez-vous faire ? z (HAUT) - q (GAUCHE) - s (BAS) - d (DROITE) - p (QUITTER)"
	touche = STDIN.getch.to_s
	puts "la touche est #{touche}"

	case touche
	when "z"
	  	jeu.player.move(0,-1)
	when "q"
	  	jeu.player.move(-1,0)
	when "s"
	  	jeu.player.move(0,1)
	when "d"
	  	jeu.player.move(1,0)
	when "p"
	  	quit = true
	else
	  "Je n'ai pas compris"
	end

	jeu.draw
end

puts "A bientot"