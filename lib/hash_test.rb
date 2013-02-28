# require 'matrix'
#     m = Matrix.build(5) { Kernel.rand(2) }
#     rows = [ m[0, (0..4)], m[1, (0..4)], m[2, (0..4)], m[3, (0..4)], m[4, (0..4)] ]
#     loners = []
#     neighbor_count = {}
#     coordinate = "#{row_index}, #{cell_index}"
#     rows.map { |row_index| @row_index = row_index .map {|cell_index| neighbor_count[[row_index, cell_index].join(', ')] = 0} }

#     print neighbor_count
require './cell.rb'
span = 3
rows = Array.new(span){|row_index| Array.new(span){|cell_index| Cell.new(row_index, cell_index)} }
#rows.map { |row| row.map { |cell| cell.aliveness } }
cell_plots = rows.map { |row| row.map { |cell| cell.aliveness } }
puts (cell_plots.map {|row| row.join(' ')}).join("\n")