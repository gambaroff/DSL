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
  
  def print_details
    puts "#{@name} - #{@year} (#{@system})"
  end  
  
  def play
  end
  
  def capture_screenshot
  end  
end