require 'spec-helper'

describe "Product pages" do
	describe "index page" do
		it "should visit the index page"
			visit root_path
		end
	end

	describe "new page" do
		it "should visit new page"
			visit new_path
		end
	end

	describe "edit page" do
		it "should visit edit oage"
			visit edit_path
		end
	end

	describe "show page" do
		it "should show product" 
			visit show_path
		end
	end
end

