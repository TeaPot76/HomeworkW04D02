class Computer
  def initialize()
    @valid_imput = ['rock', 'paper', 'scissors']
  end

  def get_choice
    index = rand(3)
    return @valid_imput[index]
  end
end
