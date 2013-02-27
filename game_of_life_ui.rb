puts "WELCOME TO THE GAME OF LIFE!"

puts "here's how it works"
#1. Any live cell with fewer than two live neighbours dies, as if caused by under-population. 
# 2. Any live cell with two or three live neighbours lives on to the next generation.
# 3. Any live cell with more than three live neighbours dies, as if by overcrowding.
# 4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

print "Press any key to get started:"
gets.chomp
#initialize a 20x20 matrix
#display to user
game_matrix = Matrix.new
print game_matrix