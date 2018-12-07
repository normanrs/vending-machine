class Slot
  attr_reader :name, :cost, :capacity

  def initialize(name, cost, capacity)
    @name     = name
    @cost     = cost
    @capacity = capacity
    @contents = []
  end

  def return_contents
    @contents if @contents != []
  end

  def fill(snack)
    @contents << snack
  end

end
