class Game
  attr_reader :name, :cost, :national_drawing
  def initialize(name, cost, national_drawing = nil)
    @name = name
    @cost = cost
    @national_drawing = national_drawing
  end

  def national_drawing?
    @national_drawing == nil ? national_drawing = false : national_drawing = true
  end

end
