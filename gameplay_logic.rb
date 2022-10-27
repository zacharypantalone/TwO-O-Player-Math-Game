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
    
    # if @input != 'int'
    #     puts "Invalid input!"

    if @input == @question.answer
        print "#{@answer} is correct!"
      else
        puts "Yikes! That's incorrect!"
    end
  end

  def nextTurn
    prompt = "#{@current_player.name} said #{@input}"
    puts prompt
    
    if @player1.name == @current_player.name
      puts @question.question_prompt
      correctAnswer
      @current_player = @player2
    else 
      @current_player = @player1
    end
    @question = Question.new
  end 
end