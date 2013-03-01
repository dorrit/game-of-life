require 'spec_helper'

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
      board.show_board.should eq "0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n0 1 1 1 0\n"
    end
  end

  context '#sum_neighbors' do 
    it 'adds up all the live cells that are touching the cell in question' do 
      Kernel.stub(:rand).and_return(0, 0, 0, 0, 1, 0, 0, 0, 0)
      board = Board.new(3)
      board.sum_neighbors
      board.neighbor_count.should eq 0
    end

    # it 'adds up all the live cells that are touching the cell in question' do 
    #   Kernel.stub(:rand).and_return(1, 0, 1, 0, 0, 0, 0, 0, 1, 0)
    #   board = Board.new(3)
    #   cell = Cell.new(0,1)
    #   board.sum_neighbors(cell)
    #   board.neighbor_count.should eq 1
    # end

    it 'adds up all the live cells that are touching the cell in question' do 
      Kernel.stub(:rand).and_return(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1)
      board = Board.new(4)
      board.sum_neighbors
      board.neighbor_count.should eq 1
    end

    it 'adds up all the live cells that are touching the cell in question' do 
    Kernel.stub(:rand).and_return(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1)
    board = Board.new(4)
    board.sum_neighbors
    board.neighbor_count.should eq 2
    end
  end

  context '#transform' do
    it 'tells the cells to evolve' do
      Kernel.stub(:rand).and_return(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
      board = Board.new(4)
      board.transform.should eq [[0, 0, 0, 0], [0 ,0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
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