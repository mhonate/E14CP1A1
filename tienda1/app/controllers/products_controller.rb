class ProductsController < ApplicationController

	def create
		@category = Category.find(params[:category_id])
		@product = @category.products.build(products_params)
		@product.save
		redirect_to category_path(@product.category_id)
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to category_path
	end
private
	def products_params
		params.require(:product).permit(:name, :price)
    end
end

