require 'spec_helper'

describe ProductsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
    it "populates an array of products"
    it "renders the index view"
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      response.should be_success
    end
    it "assigns the product to @product"
    it {"renders the show view for that product"}
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
    it "creates a new Product to @product"
    it "renders the new view"
  end

  describe "GET 'edit'" do
    it "returns http success" do
      get 'edit'
      response.should be_success
    end
    it "assigns the prodcuts to @product"
    it "renders the edit view"
    it "changes a value "
    it "saves chnged value"
  end

end
