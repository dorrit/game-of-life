require 'spec_helper'
require 'matrix'

describe Board do 
  context '#plot' do
    it 'returns an array of 5 arrays, each with 5 elements: each 0 or 1' do
      Kernel.stub(:rand).and_return(0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0)
      board = Board.new
      board.plot.should eq [[0, 1, 1, 1, 0], [0, 1, 1, 1, 0], [0, 1, 1, 1, 0], [0, 1, 1, 1, 0], [0, 1, 1, 1, 0]]
    end
  end

  context '#show_board' do
    it 'shows a 5 by 5 game of life board with central 9 cells alive' do
      Kernel.stub(:rand).and_return(0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0)
      board = Board.new
      board.show_board.should eq "0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0"
    end
  end
  
  # context '#apply_rule_1' do
  #   it 'finds and kills any live cell with fewer than two live neighbours.' do
  #     board = Board.new
  #     board.apply_rule_1
  #     board.show_board.should eq "0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n"
  #   end
  # end
end