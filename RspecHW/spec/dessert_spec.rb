require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Yiannapoulos") }
	let(:galatobouriko) { Dessert.new("galatobouriko", 20, chef)}

  describe "#initialize" do
    it "sets a type" do
			expect(galatobouriko.type).to eq("galatobouriko")
	  end

    it "sets a quantity" do
      expect(galatobouriko.quantity).to eq(20)
    end

    it "starts ingredients as an empty array" do
      expect(galatobouriko.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("galatobouriko", "4", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      galatobouriko.add_ingredient("honey")
      expect(galatobouriko.ingredients).to include("honey")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
		end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      galatobouriko.eat(2)
      expect(galatobouriko.quantity).to eq(18)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { galatobouriko.eat(400000)}.to raise_error("there's not enough!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Yiannapoulos the Greek")
      expect(galatobouriko.serve).to eq("Chef Yiannapoulos the Greek has made 20 trays of galatobouriko!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(galatobouriko)
      galatobouriko.make_more
    end
  end
end
