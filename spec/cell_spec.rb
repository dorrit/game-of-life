require 'spec_helper'

describe Cell do
  context '#coordinate_pair' do
    it 'should return an array with two values: [row number, column number] for the given cell' do
      cell = Cell.new(0, 0)
      cell.coordinate_pair.should eq [0, 0]
    end
  end
  context '#aliveness' do
    it 'should return the binary number indicating whether the cell is dead or alive (0 or 1)' do
      Kernel.stub(:rand).and_return(1)
      cell = Cell.new(0, 0)
      cell.aliveness.should eq 1
    end
  end

  context '#add_neighbor_count' do 
    it 'adds the neighbor count info to cell' do
      cell = Cell.new(2,2)
      cell.add_neighbor_count(2).should eq 2
    end
  end

  context '#switch' do
    it 'changes the #aliveness from alive(1) to dead(0) or vice versa' do 
      Kernel.stub(:rand).and_return(1)
      cell = Cell.new(1,1)
      cell.switch
      cell.aliveness.should eq 0
    end
  end

  context '#evolve' do
    it 'changes the state of an alive cell based on number of neighbors' do
      Kernel.stub(:rand).and_return(1)
      cell = Cell.new(1,1)
      cell.add_neighbor_count(1)
      cell.evolve.should eq 0
    end

    it 'changes the state of a dead cell with 3 neighbors to alive' do
      Kernel.stub(:rand).and_return(0)
      cell = Cell.new(1,1)
      cell.add_neighbor_count(3)
      cell.evolve.should eq 1
    end
  end

end