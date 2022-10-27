class Gameplay 

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @question = Question.new
    @life = 3
    
  end
  
  def startGame
    # we need to find something that we can trigger to break the loop
    while @current_player.life > 0
      
      nextTurn
      @question = Question.new
    end
    puts "Game over, thanks for playing!"
  end
  
  

 

   
  
  attr_reader :current_player


  def correctAnswer
    
    @input = gets.chomp.to_i
    
    prompt = "#{@current_player.name} said #{@input}"
    puts prompt
    if @input != 'int'
        puts "Invalid input!"
    end

    if @input == @question.answer
        puts "#{@question.answer} is correct!"
      else
        puts "Yikes! That's incorrect!"
        @current_player.life -= 1
    end
    
  end

  attr_reader :input

  def nextTurn
    
    if @player1.name == @current_player.name
      puts @question.question_prompt
      correctAnswer
      if current_player.life == 0
      # we want a trigger to set off with this condition is met, this trigger will break the while loop
      @current_player = @player2
    else
      puts @question.question_prompt
      correctAnswer
      if current_player.life == 0
      # we want a trigger to set off with this condition is met, this trigger will break the while loop
      @current_player = @player1
    end
    
  end 
end 