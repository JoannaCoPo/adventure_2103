class Park
  attr_reader :name,
              :trails

  def initialize(attribute)
    @name = attribute
    @trails = []
  end

  def add_trail(trail)
    @trails << trail
  end
end
