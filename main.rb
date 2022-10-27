require './players'
require './question'
require './gameplay_logic'

player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")
# puts player_1.name

game = Gameplay.new(player_1, player_2)
puts game.current_player.name
