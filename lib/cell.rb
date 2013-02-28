class Cell
  def initialize(row_index, column_index)
    @aliveness = Kernel.rand(2)
    @row_index = row_index
    @column_index = column_index
    # @coordinates = [row_index, column_index]
  end

  def coordinate_pair
    [@row_index, @column_index]
  end

  def aliveness
    @aliveness
  end

end