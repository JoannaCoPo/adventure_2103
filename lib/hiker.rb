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

  def possible_trails
    trails = []
    @parks_visited.each do |park|
      park.trails.find_all do |trail|
        if trail.level == @experience_level
          trails << trail
        end
      end
    end
    trails
  end
end
