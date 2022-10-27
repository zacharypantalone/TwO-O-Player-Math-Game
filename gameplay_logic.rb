class Gameplay 

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @question = Question.new
    @life = 3
    @isPlaying = true
  end
  
  def startGame
    while true
      nextTurn
      @question = Question.new
    end
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
    end
  end

  attr_reader :input

  def nextTurn
    
    if @player1.name == @current_player.name
      puts @question.question_prompt
      correctAnswer
      @current_player = @player2
    else
      puts @question.question_prompt
      correctAnswer 
      @current_player = @player1
    end
    
  end 
end 