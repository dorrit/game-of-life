require 'matrix'

class Board
  def initialize(span)
    #Board.new(span)
    #@rows = (0..span-1).to_a.map { |row_index| Array.new(span){|cell_index| Cell.new(row_index, cell_index)} }
    # seed_matrix = Matrix.build(5) { Kernel.rand(2) }
    # @rows = [ seed_matrix[0, (0..4)], seed_matrix[1, (0..4)], seed_matrix[2, (0..4)], seed_matrix[3, (0..4)], seed_matrix[4, (0..4)] ]
    @loners = []
    @neighbor_count = {}
    @rows = Array.new(span){|row_index| Array.new(span){|cell_index| Cell.new(row_index, cell_index)} }

    # @rows.map { |row_index| row_index.each {|cell_index| @neighbor_count[row_index, cell_index] = 0} }
   # @rows = (0..4).to_a.map {|index| [0, 1, 1, 1, Kernel.rand(0..1)]}
  end

  def plot
    @rows.map { |row| row.map { |cell| cell.aliveness } }
  end

  def show_board
    (self.plot.map {|row| row.join(' ')}).join("\n")

    #@rows.each {|row| row.join(" ")}

    # [0..@rows.length-1]
   # "0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n"
  end

#finds and all live cell with fewer than two live neighbours and kills them all
  # def find_loners
  #   @rows.map |row|
  #     row.map |cell|
  #       if @rows[row-1][cell-1] + @rows[row-1][cell] + @rows[row-1][cell+1]
  #       end
  #     end
  #   end
  # end

#   private

#   def find_loners
#     @rows.map |row|
#       row.map |cell|
#         if @rows[row-1][cell-1] + @rows[row-1][cell] + @rows[row-1][cell+1]

#         #end if
#         end
#       #end map
#       end
#     #end map
#     end
#   #end def
#   end


#   def sum_neighbors
#     @rows.map |row|
#       if row.include?(1)
#         row.map |cell|
#           if cell == 1
            
#             if @rows[row-1][cell-1] + @rows[row-1][cell] + @rows[row-1][cell+1] + 
#             @rows[row][cell-1] + @rows[row][cell+1] + 
#             @rows[row+1][cell-1] + @rows[row+1][cell] + @rows[row+1][cell+1]

#           #end if
#           end
#         #end map
#         end
#       #end if
#       end
#     #end map
#     end
#   #end def
#   end
# #end class
end