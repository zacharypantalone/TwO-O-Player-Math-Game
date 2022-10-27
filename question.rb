class Question
  attr_reader :answer, :num1, :num2, :question_prompt

  def initialize
    @num1 = rand(1...10)
    @num2 = rand(1...10)
    @question_prompt = "what is #{@num1} + #{@num2}?"
    @answer = @num1 + @num2
  end
    
end