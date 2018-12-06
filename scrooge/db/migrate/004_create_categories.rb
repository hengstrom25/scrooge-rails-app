class CreateCategories < ActiveRecord::Migration[4.2]
	def change
		create_table :category do |t|
			t.string :name
		end
	end

end