require 'spec_helper'
require 'rational'

describe Numeral do
  include Numeral

  it "returns nil if input cannot be parsed" do
    parse_num("foobar").should be_nil
  end

  describe "parses" do

    it "digits" do
      parse_num("1").should == 1
      parse_num("12").should == 12
    end

    it "fractions" do
      parse_num("2/3").should == Rational(2,3)
      parse_num("3/4").should == 0.75
    end

    it "decimals" do
      parse_num("0.5").should == 0.5
      parse_num(".5").should == 0.5
    end

    it "natural words" do
      parse_num("zero").should == 0
      parse_num("One").should == 1
      parse_num("TEN").should == 10
      parse_num("thirteen").should == 13
      parse_num("twenty").should == 20
    end
  end
end
