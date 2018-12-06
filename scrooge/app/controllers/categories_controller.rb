class CategoriesController < ActiveRecord::Base

	def new
		@category = Category.new
	end
	
	def create
		@category = Category.create(category_params)
		redirect_to 
	end

end