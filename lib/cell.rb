class Cell
  attr_reader :aliveness, :row_index, :column_index


  def initialize(row_index, column_index)
    @aliveness = Kernel.rand(2)
    @row_index = row_index
    @column_index = column_index
    @neighbors = 0
    # @coordinates = [row_index, column_index]
  end

  def coordinate_pair
    [@row_index, @column_index]  
  end

  def add_neighbor_count(tally)
    @neighbors = tally
  end

  def switch
    if @aliveness == 1
      @aliveness = 0
    else 
      @aliveness = 1
    end
  end

  def evolve
    if (@aliveness == 1 && @neighbors < 2) || (aliveness == 1 && @neighbors > 3) 
      switch
    elsif @aliveness == 0 && @neighbors == 3
      switch
    else
      @aliveness
    end
  end
  
end

