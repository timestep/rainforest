require 'spec_helper'

describe "Product pages" do
	describe "index page" do
		it "should visit the index page" do
			visit '/'
		end
	end

	describe "new page" do
		it "should visit new page" do
			visit '/products/new'
		end
	end

	describe "edit page" do
		it "should visit edit page" do
			visit '/products/1/edit'
		end
	end

	describe "show page" do
		it "should show product" do
			visit '/products/1'
		end
	end
end

