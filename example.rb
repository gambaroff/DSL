add_game "Civilization" do
  system "PC"
  year 1991
  strategy
  turn_based #tag
end

add_game "Contra" do
  system "NES"
  year 1987
end

with_game "Contra" do
  print_details
  play
  capture_screenshot
end