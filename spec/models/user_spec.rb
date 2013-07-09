require 'spec_helper'

describe User do
  it "has a valid factory" do
    FactoryGirl.create(:user).should be_valid
  end

  it "has a valid factory" do
    FactoryGirl.build(:user, name: nil).should_not be_valid
  end

  it { should has_many(:reviews) }
  it { should has_many(:products).through(:reviews) }

end
