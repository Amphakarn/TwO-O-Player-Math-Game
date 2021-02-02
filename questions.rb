class Questions
  def initialize
    val_1 = rand(1...20)
    val_2 = rand(1...20)
    operator = [:+, :-]
    current_operand = operator.sample
    hash_operand = { "+": "plus", "-": "minus" }
    @answer = val_1.send current_operand, val_2
    @question = "What does #{val_1} #{hash_operand[current_operand]} #{val_2} equal?"
  end

  def question
    @question
  end

  def answer
    @answer
  end
end