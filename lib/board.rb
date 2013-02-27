require 'matrix'

class Board
  def initialize
    m = Matrix.build(5) { Kernel.rand(2) }
    @rows = [ m[0, (0..4)], m[1, (0..4)], m[2, (0..4)], m[3, (0..4)], m[4, (0..4)] ]
   # @rows = (0..4).to_a.map {|index| [0, 1, 1, 1, Kernel.rand(0..1)]}
  end

  def plot
    @rows
  end

  def show_board
    (@rows.map {|row| row.join(' ')}).join("\n")
    #@rows.each {|row| row.join(" ")}

    # [0..@rows.length-1]
   # "0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n"
  end
end


