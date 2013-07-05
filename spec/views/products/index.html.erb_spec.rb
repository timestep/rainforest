require 'spec_helper'

describe "products/index.html.erb" do
	describe "contains a table" do 
		it "contains a table" do
			visit '/products/'
			page.has_table?('list_of_products')
		end
	end	
end
