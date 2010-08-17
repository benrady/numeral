require 'spec_helper'
require 'rational'

describe Numeral do
  describe "parses" do
    include Numeral

    it "digits" do
      parse("1").should == 1
      parse("12").should == 12
    end

    it "fractions" do
      parse("2/3").should == Rational(2,3)
      parse("3/4").should == 0.75
    end

    it "decimals" do
      parse("0.5").should == 0.5
      parse(".5").should == 0.5
    end

    it "natural words" do
      parse("zero").should == 0
      parse("One").should == 1
      parse("TEN").should == 10
      parse("thirteen").should == 13
      parse("twenty").should == 20
    end
  end
end
