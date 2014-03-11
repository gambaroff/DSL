class Game
  attr_reader :name
  
  def initialize(name)
    @name = name
    @year = nil
    @system = nil
    @tags = []
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
     raise @system == "SNES"? "No emulator for SNES games." : "Starting #{@name}"
  end
  
  def capture_screenshot
    puts "Grabbing a screenshot for #{@name}"
  end  
  
  def method_missing(method_name, *args)
    @tags << method_name.to_s
  end
end