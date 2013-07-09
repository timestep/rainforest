require 'spec_helper'

describe Product do

   it "has a valid factory" do
    FactoryGirl.create(:product).should be_valid
  end

  it "is invalid without name" do
  	FactoryGirl.build(:product, name: nil).should_not be_valid
  end

  it "is invalid without price" do
  	FactoryGirl.build(:product, price_in_cents: nil).should_not be_valid
  end

  it "is valid without description" do
  	FactoryGirl.build(:product, description: nil).should_not be_valid
  end

  it "has uniquness of name" do
  	products = FactoryGirl.create(:product)
  	FactoryGirl.create(:product, name: "yolo")
  	FactoryGirl.build(:product, name:"yolo").should_not be_valid
  end

  it "returns the price in dollar amount" do
  	product = FactoryGirl.create(:product)
  	product.formatted_price.should == (product.price_in_cents.to_f/100).to_s
	end
end