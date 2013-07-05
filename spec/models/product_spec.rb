require 'spec_helper'

describe Product do

	before { @product = Product.new(name: "nexus1k", 
		description: "best thing since sliced bread",
		price_in_cents: 1000000) }

  subject{ @product }
  
  describe Description do 
	  it { should respond_to(:description) }
	  it { should be_a(text) }
	end

	describe Price In Cents do 
		it { should be_a(Integer) }
	  it { should respond_to(:price_in_cents)	}
	end

	describe Name do
		it { should respond_to(:name) }
		it { should respond_to(String) }
	end

end
