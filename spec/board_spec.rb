require 'spec_helper'
require 'matrix'

describe Board do 
  context '#plot' do
    it 'returns an array of 5 arrays, each with 5 elements: each 0 or 1' do
      Kernel.stub(:rand).and_return(0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1,
                                    1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0)
      board = Board.new(5)
      board.plot.should eq [[0, 1, 1, 1, 0], [0, 1, 1, 1, 0], [0, 1, 1, 1, 0], 
                            [0, 1, 1, 1, 0], [0, 1, 1, 1, 0]]
    end
  end

  context '#show_board' do
    it 'shows a 5 by 5 game of life board with central 9 cells alive' do
      Kernel.stub(:rand).and_return(0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 
                                    0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0)
      board = Board.new(5)
      board.show_board.should eq "0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0"
    end
  end
  
  # context '#kill_loners' do
  #   it 'finds and all live cell with fewer than two live neighbours and kills them all.' do
  #     Kernel.stub(:rand).and_return(0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 
  #                                   0, 1, 0, 0, 0, 0, 0, 0)
  #     board = Board.new
  #     board.apply_rule_1
  #     board.show_board.should eq "0 0 0 0 0\n0 0 0 0 0\n0 0 0 1 0\n0 0 0 1 1\n0 0 0 0 0\n"
  #   end
  # end
end