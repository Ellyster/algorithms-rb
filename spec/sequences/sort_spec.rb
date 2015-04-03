$: << File.join(File.expand_path(File.dirname(__FILE__)), '../..', 'lib')

require 'algorithms-rb'

include Algorithms
include Sequences

describe "Sorting algorithms for sequences" do

  before(:each) do
    @algorithms = %w(bubble_sort insertion_sort selection_sort merge_sort shell_sort quick_sort)
  end

  it "should return nil with no array" do
    @algorithms.each { |name| expect(Sort.send(name, nil)).to eq(nil) }
  end

  it "should work with empty arrays" do
    @algorithms.each { |name| expect(Sort.send(name, [])).to eq([]) }
  end

  it "should work for an array of size 1" do
    @algorithms.each { |name| expect(Sort.send(name, [1])).to eq([1]) }
  end

  it "should work for arrays of random numbers" do
    n = 250
    array = Array(-n..n) { rand(n) }
    @algorithms.each { |name| expect(Sort.send(name, array.dup)).to eq(array.sort) }
  end

  it "should work for arrays of repeated numbers" do
    array = [3,3,3,2,2,2,1,1,1]
    @algorithms.each { |name| expect(Sort.send(name, array.dup)).to eq(array.sort) }
  end
end
