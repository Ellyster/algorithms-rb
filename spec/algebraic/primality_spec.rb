$: << File.join(File.expand_path(File.dirname(__FILE__)), '../..', 'lib')

require 'algorithms-rb'

include Algorithms
include Algebraic

describe "Primality tests for integers" do

  before(:each) do
    @algorithms = %w(solovay_strassen)
  end


  it "should return nil with no number" do
    @algorithms.each { |name| expect(Primality.send(name, nil)).to eq(nil) }
  end

  it "should return nil with no integer" do
    @algorithms.each { |name| expect(Primality.send(name, 2.34)).to eq(nil) }
  end

  it "should return nil with negative integers" do
    @algorithms.each { |name| expect(Primality.send(name, -1)).to eq(nil) }
  end

  it "should return nil with 0" do
    @algorithms.each { |name| expect(Primality.send(name, 0)).to eq(nil) }
  end

  it "should return nil with 1" do
    @algorithms.each { |name| expect(Primality.send(name, 1)).to eq(nil) }
  end

  it "should 'mostly' return true with prime numbers" do
    @algorithms.each { |name| expect(Primality.send(name, 2)).to eq(true) }
    @algorithms.each { |name| expect(Primality.send(name, 73)).to eq(true) }
    @algorithms.each { |name| expect(Primality.send(name, 199)).to eq(true) }
    @algorithms.each { |name| expect(Primality.send(name, 1811)).to eq(true) }
    @algorithms.each { |name| expect(Primality.send(name, 2741)).to eq(true) }
  end

  it "should return false with prime composite numbers" do
    @algorithms.each { |name| expect(Primality.send(name, 6)).to eq(false) }
    @algorithms.each { |name| expect(Primality.send(name, 27)).to eq(false) }
    @algorithms.each { |name| expect(Primality.send(name, 819)).to eq(false) }
    @algorithms.each { |name| expect(Primality.send(name, 1557)).to eq(false) }
    @algorithms.each { |name| expect(Primality.send(name, 2533)).to eq(false) }
  end
end
