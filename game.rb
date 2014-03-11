class Game
  attr_reader :name
  
  def initialize(name)
    @name = name
    @year = nil
    @system = nil
  end
  
  def year(value)
    @year = value
  end
  
  def system(value)
    @system = value
  end
end