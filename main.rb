require './players'
require './question'
require './gameplay_logic'

player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")
puts "Welcome #{player_1.name} and #{player_2.name}!\n#{player_1.name}, you're up first!"

game = Gameplay.new(player_1, player_2)
game.startGame
puts game.current_player.name