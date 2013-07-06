class ReviewsController < ApplicationController
	before_filter :load_product

  def show
  	@review = Review.find(params[:id])
  end

  def new
  end

  def create
  	@review = Review.new(
  		:comment 		=> params[:review][:comment],
  		:product_id => @product.id,
  		:user_id 		=> current_user.id
  	)

  	if @review.save
  		redirect_to products_path, notice: 'Review created successfully'
 		else
 			render :action => :show
 		end
 	end

  def edit
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
 		@product = product.find(params[:product_id])
 	end

end
