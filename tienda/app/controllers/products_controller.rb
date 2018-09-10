class ProductsController < ApplicationController
	def create

		@product = Product.new(category_params)
		
	end
end
