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
end