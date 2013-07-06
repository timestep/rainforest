class ReviewsController < ApplicationController
	before_action :load_product
  before_action :ensure_logged_in, :only => [:edit, :create, :show, :update, :destroy]

  def show
  	@review = Review.find(params[:id])
  end

  def new
  end

  def create
  	@review = @product.reviews.build(review_params)

  	if @review.save
  		redirect_to products_path, notice: 'Review created successfully'
 		else
 			render :action => :show
 		end
 	end


  def destroy
  	@review = Review.find(params[:id])
  	@review.destroy
  end

  private

 	def review_params
 		params.require(:review).permit!
 	end

 	def load_product
 		@product = Product.find(params[:product_id])
 	end

end
