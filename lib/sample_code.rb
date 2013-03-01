 #Board.new(span)
    #@rows = (0..span-1).to_a.map { |row_index| Array.new(span){|cell_index| Cell.new(row_index, cell_index)} }
    # seed_matrix = Matrix.build(5) { Kernel.rand(2) }
    # @rows = [ seed_matrix[0, (0..4)], seed_matrix[1, (0..4)], seed_matrix[2, (0..4)], seed_matrix[3, (0..4)], seed_matrix[4, (0..4)] ]


    # @rows.map { |row_index| row_index.each {|cell_index| @neighbor_count[row_index, cell_index] = 0} }
   # @rows = (0..4).to_a.map {|index| [0, 1, 1, 1, Kernel.rand(0..1)]}

     #@rows.each {|row| row.join(" ")}

    # [0..@rows.length-1]
   # "0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n"