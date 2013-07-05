require 'spec_helper'

describe Product do

	before { @product = Product.new(name: "nexus1k", 
		description: "best thing since sliced bread",
		price_in_cents: 1000000) }

  subject{ @product }

  it { should respond_to(:description) }
  it { should respond_to(:price_in_cents)	}
  it { should respond_to(:name) }
  
end
