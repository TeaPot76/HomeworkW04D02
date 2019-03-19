require 'minitest/autorun'
require_relative '../models/computer'

class TestComputer < Minitest::Test

  def setup
    @valid_imput = ['rock', 'paper', 'scissors']
    @computer = Computer.new()
  end

  def test_valid_choice
    for i in 0..10
      choice = @computer.get_choice()
      # puts choice
      assert_equal(true, @valid_imput.include?(choice))
    end
  end


end
