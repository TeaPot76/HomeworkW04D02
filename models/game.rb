class Game
  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
    @valid_imput = ['rock', 'paper', 'scissors']
  end
  

def play

  if !@valid_imput.include?(@player_choice) ||  !@valid_imput.include?(@computer_choice)
    return "Invalid imput"
  end

  if @computer_choice == @player_choice
    return "Draw"
  end

  case @player_choice
    when "rock"
      if  @computer_choice == "paper"
        return "Computer wins!"
      else
        return "You win!"
      end
    when "paper"
      if  @computer_choice == "scissors"
        return "Computer wins!"
      else
        return "You win!"
      end
    when "scissors"
      if  @computer_choice == "rock"
        return "Computer wins!"
      else
        return "You win!"
      end
  end
end


end
