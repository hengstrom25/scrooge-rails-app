class Item < ActiveRecord::Base
	belongs_to :transaction
	belongs_to :category
	has_one :quantity

end
