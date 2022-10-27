class Gameplay 

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    # self.nextTurn
    
    while true
      self.nextTurn
    end
    # input = gets.chomp
    # if input == "1"
    #   puts true
    # else 
    #   puts false
    # end  
  end

  attr_reader :current_player

  def nextTurn
    input = gets.chomp
    answer = "#{@current_player.name} said #{input}"
    puts answer


    if @player1.name == @current_player.name
      @current_player = @player2
    else 
      @current_player = @player1
    end
  end 
end