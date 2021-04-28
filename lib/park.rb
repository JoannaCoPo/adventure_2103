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

  def trails_shorter_than(length)
    @trails.find_all do |trail|
      trail.length < length
    end
  end

  def hikeable_miles
    @trails.sum do |trail|
      trail.length
    end
  end

  def trails_by_level
    trails_by_level = Hash.new
    @trails.each do |trail|
      level = trail.level
      trails_by_level[trail.level] = trail.name
    end
    trails_by_level
  end
end
