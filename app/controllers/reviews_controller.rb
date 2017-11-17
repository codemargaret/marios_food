class ReviewsController < ApplicationController
  # def show
  #   binding.pry
  #   @product = Product.find(params[:id])
  #
  #   @reviews = @product.reviews
  # end

  # def new
  #   @product = Product.find(params[:product_id])
  #   @review = @product.reviews.new
  # end
  #
  # def create
  #   @product = Product.find(params[:product_id])
  #   @review = @product.reviews.new(review_params)
  #   if @review.save
  #     redirect_to product_path(@review.product)
  #   else
  #     render :new
  #   end
  # end

#   def edit
#     @product = Product.find(params[:product_id])
#     @review = @product.reviews.find(params[:id])
#   end
#
#   def update
#     @review= Task.find(params[:id])
#     @product = Product.find(params[:product_id])
#     if @review.update(review_params)
#       redirect_to product_path(@review.product)
#     else
#       render :edit
#     end
#   end
#
#   def destroy
#     @review = Task.find(params[:id])
#     @review.destroy
#     redirect_to product_path(@review.product)
#   end
#
#
# private
#   def review_params
#     params.require(:review).permit(:description)
#   end
end
