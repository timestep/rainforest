require 'spec_helper'

describe Review do
  it "has a valid factory" do
    FactoryGirl.create(:review).should be_valid
  end

  it "has to have a description" do
  	FactoryGirl.build(:review, comment: nil ).should_not be_valid
  end

  it{ should belong_to(:user) }
  it{ should belong_to(:product) }

end
