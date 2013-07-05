require 'spec_helper'

describe Product do

	before { @product = Product.new(name: "nexus1k", 
		description: "best thing since sliced bread",
		price_in_cents: 1000000) }

  subject{ @product }
  
  it 'checks valid description' do
  	should respond_to(:description)
  	# should be_a(text) 
	end
	
	it 'checks if price is valid' do
  	# should be_a(Integer)
	  should respond_to(:price_in_cents)
	end

	it 'checks if has name' do
		should respond_to(:name)
		# @product.name should respond_to(String)
	end
	

end
