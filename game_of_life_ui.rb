require './lib/board'
require './lib/cell'

puts "WELCOME TO THE GAME OF LIFE!"

board = Board.new(30)
print board.show_board
ask = nil
until ask == "e"
  puts 'Press enter to watch your board evolve! Press e to exit.'
  ask = gets.chomp
  board.transform
  puts board.make_pretty
  # print board.show_board
end
  

