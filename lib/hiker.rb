class Hiker
  attr_reader :name,
              :experience_level,
              :snacks,
              :parks_visited

  def initialize(hiker_name, level)
    @name = hiker_name
    @experience_level = level
    @snacks = Hash.new(0)
    @parks_visited = []
  end

  def pack(item, quantity)
    @snacks[item] += quantity
  end

  def visit(park)
    @parks_visited << park
  end
end
