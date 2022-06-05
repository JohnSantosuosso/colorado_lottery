require_relative 'game'
class Contestant
  attr_reader :first_name, :last_name, :age, :state_of_residence, :spending_money
  attr_accessor :full_name, :game_interests

  def initialize(attributes)
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @full_name = @first_name + ' ' + @last_name
    @age = attributes[:age]
    @state_of_residence = attributes[:state_of_residence]
    @spending_money = attributes[:spending_money]
    @game_interests = []
  end

  def out_of_state?
    @state_of_residence == 'CO' ? false : true
  end

  def add_game_interest(game)
    @game_interests << game
  end

end
