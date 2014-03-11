class Library
  def initialize
    @games = []
  end 
  
  def add_game(name)
    @games << name
  end  
  
  def find_by_name(name)
    @games.detect { |game| game.name == name }
  end
end