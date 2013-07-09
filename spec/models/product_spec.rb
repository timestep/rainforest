require 'spec_helper'

describe Product do

	before { @product = Product.new(name: "nexus1k", 
		description: "best thing since sliced bread",
		price_in_cents: 1000000) }

  subject( :product ){@product}
  
  it { should respond_to(:description) }
	it { should respond_to(:name) }

	it 'checks if price is valid' do
  	product.price_in_cents.should be_a(Integer)
	  should respond_to(:price_in_cents)
	end


end
