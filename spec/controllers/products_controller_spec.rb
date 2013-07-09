require 'spec_helper'

describe ProductsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "renders the index view" do
      get :index
      expect(response).to render_template("index")
    end

    it "populates an array of products" do
      product1, product2 = FactoryGirl.create(:product), FactoryGirl.create(:product)
      get :index
      expect(assigns(:products)).to match_array([product1, product2])
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      response.should be_success
    end
    it "renders the show view for that product" do
      product = FactoryGirl.create(:product)
      get :show
      expect(response).to render_template("show")
    end
    it "assigns the product to @product" do
      product1 = FactoryGirl.create(:product)
      get :show
      expect(assigns(:product)).to match(product1)
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
    it "renders the new view" do
      get :new
      expect(response.to render_template(:new))
    end
    it "creates a new Product to @product" do
      product = FactoryGirl.create(:product)
      get :new
      fill_in "Name", :with => product.name
      fill_in "Description", with => product.description
      fill_in "Price", :with => product.price_in_cents
      click_button "Submit"

      expect(page).to have_selector("#product-name", :text => product.name)
    end
  end

  describe "GET 'edit'" do
    it "returns http success" do
      get 'edit'
      response.should be_success
    end
    it "renders the edit view" do
      product = FactoryGirl.create(:product)
      get :edit
      expect(response.to render_template(:edit))
    end
    it "renders the edit view" do
      product = FactoryGirl.create(:product)
      get :edit
      expect(response.to render_template(:edit))
    end
    it "changes a value "
    it "saves chnged value"
  end
end