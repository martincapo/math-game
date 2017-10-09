class Game

  def initialize()
    @answer = 0
  end

  def gen_question(player)
    num1 = rand(1...20)
    num2 = rand(1...20)
    @answer = num1 + num2
    puts "#{player} : What does #{num1} plus #{num2} equal?"
    gets.chomp.to_i
  end

  def is_wrong?(answer)
    @answer != answer
  end

end
