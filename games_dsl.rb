LIBRARY = Library.new

def add_game(name)
  game = Game.new(name)
  game.instance_eval(&block)
  LIBRARY.add_game(game)
end
