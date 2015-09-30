class Jeu
	attr_accessor :rows_max, :cols_max, :player, :ruby, :nb_points

	def initialize(rows_max = 10,cols_max = 10, player = Player.new, ruby = RubyObject.new)
		@rows_max,@cols_max,@player,@ruby = rows_max,cols_max,player,ruby
		@nb_points = 0
	end

	def draw
		message = ""
		puts "On affiche un plateau de #{rows_max} lignes et #{cols_max} colonnes"
		puts "Le joueur est en position #{player.x}/#{player.y}"
		puts "Le ruby est en position #{ruby.x}/#{ruby.y}"
		(1..@rows_max.to_i).each do |j|
			(1..@cols_max.to_i).each do |i|
				test_ruby = (@ruby.x == i && @ruby.y == j)
				test_player = (@player.x == i && @player.y == j)
				if test_ruby && test_player
					manger
				end
				(test_player) ? print("\033[34mP\033[0m ") : ((test_ruby) ? print("\033[31mR\033[0m ") : print("\033[32mX\033[0m "))
			end
			puts
		end
		puts "#{nb_points} pts"
	end	

	def manger
		@nb_points += 1
	end
end