$: << File.join(File.expand_path(File.dirname(__FILE__)), '../..', 'lib')

require 'algorithms-rb'

include Algorithms
include Sequences

describe "Search algorithms for sequences" do

  before(:each) do
    @algorithms = %w(linear_search binary_search)
  end


  it "should return nil with no array" do
    @algorithms.each { |name| expect(Search.send(name, nil, 1)).to eq(nil) }
  end

  it "should return nil with no element" do
    @algorithms.each { |name| expect(Search.send(name, [1,2], nil)).to eq(nil) }
  end

  it "should return nil with empty arrays" do
    @algorithms.each { |name| expect(Search.send(name, [], 1)).to eq(nil) }
  end

  it "should return nil if the element is not in the sequence" do
    @algorithms.each { |name| expect(Search.send(name, [1,2], 3)).to eq(nil) }
  end

  it "should work for an array of size 1" do
    @algorithms.each { |name| expect(Search.send(name, [1], 1)).to eq(0) }
  end

  it "Linear search should work for arrays of random numbers" do
    n = 250
    array = Array(-n..n) { rand(n) }
    expect(Search.linear_search(array.dup, 0)).to eq(array.index(0))
  end

  it "should work for arrays of repeated numbers" do
    array = [3,3,3,2,2,2,1,1,1]
    @algorithms.each { |name| expect([3,4,5]).to include(Search.send(name, array.dup, 2)) }
  end
end
