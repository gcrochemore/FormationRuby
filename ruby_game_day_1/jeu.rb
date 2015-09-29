class Jeu
	attr_accessor :rows_max, :cols_max, :player

	def initialize(rows_max = 10,cols_max = 10, player = Player.new)
		@rows_max,@cols_max,@player = rows_max,cols_max,player
	end

	def draw
		puts "On affiche un plateau de #{rows_max} lignes et #{cols_max} colonnes"
		puts "Le joueur est en position #{player.x}/#{player.y}"
		(1..@rows_max.to_i).each do |j|
			(1..@cols_max.to_i).each do |i|
				(@player.x == i && @player.y == j) ? print("\033[34mP\033[0m ") : print("\033[10mX\033[0m ")
			end
			puts
		end
	end		
end