require 'test/unit'

require_relative('games_dsl')

class GameTest < MiniTest::Unit::TestCase
  def test_add_find_game
    expected = Game.new("Civilization")
    expected.system("PC")
    expected.year(1991)

    add_game("Civilization", "PC", 1991)
    actual = LIBRARY.find_by_name("Civilization")
    assert_equal(expected.name, actual.name)
    assert_equal(expected, actual)
  end
 
 
   def test_play_block_to_with_game_will_throw_exception
    add_game("Mega Man X2", "SNES", 1991)
    begin
    with_game "Mega Man X2" do
      play
    end
    rescue
      puts "caught exception"
      return
    end
    fail "missed exception"
  end
end