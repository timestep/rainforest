class ProductsController < ApplicationController
  
  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(params[:id])

    if current_user
      @review = @product.reviews.build
    end

    respond_to do |format|
      format.html
      format.json{ render json: @product }
    end
  end

  def new
  	@product = Product.new
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def create
  	@product = Product.new(product_params)

  	if @product.save
  		redirect_to products_url
  	else
  		render :new
  	end
  end

  def update
  	@product = Product.find(params[:id])

  	if @product.update_attributes(params[:product])
  		redirect_to product_path(@product)
  	else
  		render	:edit
  	end
  end

  def destroy
  	@product = Product.find(params[:id])
  	@product.destroy
  end

  private

  def product_params
  	params.require(:product).permit!
  end

end
