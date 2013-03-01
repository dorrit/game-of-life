class Board

  attr_reader :neighbor_count

  def initialize(span)
    @span = span
    @loners = []
    @neighbor_count = nil
    @original_grid = Array.new(span){|row_index| Array.new(span){|cell_index| Cell.new(row_index, cell_index)} }
    @new_grid = @original_grid
  end

  def plot
    @original_grid.map { |row| row.map { |cell| cell.aliveness } }
  end

  def make_pretty
    display_string = ""
    @new_grid.each do |row|
      row.each do |cell|
        if cell.aliveness == 1
          display_string << " @"
        elsif cell.aliveness == 0
          display_string << "  "
        end
      end
      display_string << "\n"
    end
    display_string
  end

  def show_board
    (self.plot.map {|row| row.join(' ')}).join("\n") + "\n"
  end

  def transform
    @new_grid.map do |row|
      row.map do |cell|
        sum_neighbors
        cell.evolve
      end
    end
  end

  def sum_neighbors
    @original_grid.each do |row|
      row.each do |cell|
          neighbors = 0
          neighbors = @original_grid[cell.row_index - 1][cell.column_index - 1].aliveness +
          @original_grid[cell.row_index - 1][cell.column_index].aliveness +
          @original_grid[cell.row_index - 1][((cell.column_index + 1) % @span) ].aliveness +
          @original_grid[cell.row_index][cell.column_index - 1].aliveness +
          @original_grid[cell.row_index][((cell.column_index + 1) % @span) ].aliveness + 
          @original_grid[((cell.row_index + 1) % @span)][cell.column_index - 1].aliveness +
          @original_grid[((cell.row_index + 1) % @span)][cell.column_index].aliveness +
          @original_grid[((cell.row_index + 1) % @span)][((cell.column_index + 1) % @span)].aliveness
          cell.add_neighbor_count(neighbors)
          @neighbor_count = neighbors
      end
    end
  end
end

    # neighbors = []
    # (-1..1).each do |row_offsets|
    #   (-1..1).each do |column_offsets|
    #     next if row_offsets == 0 && column_offsets == 0
    #       wrapped_x = (cell.row_index + row_offsets) % @span
    #       wrapped_y = (cell.column_index + column_offsets) % @span
    #       @neighbors.push(@original_grid[wrapped_x][wrapped_y])
    #       # cell.add_neighbor_count(@neighbor_count)
     
    



    # @original_grid.each do |row|
    #   row.each do |cell|
    #     if cell.aliveness == 1
    #       p @original_grid[cell.row_index-1][cell.column_index-1].aliveness  
    #       p @original_grid[cell.row_index-1][cell.column_index].aliveness  
    #       p @original_grid[cell.row_index-1][row.length % cell.column_index].aliveness 
    #       p @original_grid[cell.row_index][cell.column_index-1].aliveness  
    #       p @original_grid[cell.row_index][row.length % cell.column_index].aliveness 
    #       p @original_grid[(cell.row_index + 1) % row.length][cell.column_index-1].aliveness
    #       p @original_grid[(cell.row_index + 1) % row.length][cell.column_index].aliveness
    #       p @original_grid[(cell.row_index + 1) % row.length][row.length % cell.column_index].aliveness
         
    #       @neighbor_count = @original_grid[cell.row_index-1][cell.column_index-1].aliveness + 
    #       @original_grid[cell.row_index-1][cell.column_index].aliveness + 
    #       @original_grid[cell.row_index-1][row.length % cell.column_index].aliveness + 
    #       @original_grid[cell.row_index][cell.column_index-1].aliveness + 
    #       @original_grid[cell.row_index][row.length % cell.column_index].aliveness + 
    #       @original_grid[(cell.row_index + 1) % row.length][cell.column_index-1].aliveness +
    #       @original_grid[(cell.row_index + 1) % row.length][cell.column_index].aliveness +
    #       @original_grid[(cell.row_index + 1) % row.length][cell.column_index +1].aliveness
    #       cell.add_neighbor_count(@neighbor_count)
      #   end
      # end
    # end


#finds and all live cell with fewer than two live neighbours and kills them all
#   private

#   def find_loners
#     @original_grid.map |row|
#       row.map |cell|
#         if @original_grid[row-1][cell-1] + @original_grid[row-1][cell] + @original_grid[row-1][cell+1]

#         #end if
#         end
#       #end map
#       end
#     #end map
#     end
#   #end def
#   end

