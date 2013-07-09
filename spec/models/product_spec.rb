require 'spec_helper'

describe Product do

  # subject( FactoryGirl.create(:product) ){@product}
  
 #  it { should respond_to(:description) }
	# it { should respond_to(:name) }
	# it { should respond_to(:price_in_cents) }
 #  product.price_in_cents { should be_a(Integer) }

  it "has a valid factory" do
    FactoryGirl.create(:product).should be_valid
  end

  it "is invalid without name" do
  	FactoryGirl.create(:product, name: nil).should_not be_valid
  end

  it "is invalid without price" do
  	FactoryGirl.create(:product, price_in_cents: nil).should_not be_valid
  end

  it "is valid without description" do
  	FactoryGirl.create(:product, description: nil).should be_valid
  end

  it "has uniquness of name" do
  	products = FactoryGirl.create(:product)
  	FactoryGirl.create(:product, name: "yolo")
  	FactoryGirl.build(:product, name:"yolo").should_not be_valid
  end
end
