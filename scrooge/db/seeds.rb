# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create([{ 
	name: 'Heidi Engstrom', #user 1
	email: 'hengstrom25@gmail.com', 
	password: 'heidi'
	},
	{
	name: 'Mike Engstrom', #user 2
	email: 'engstrom.nyc@gmail.com', 
	password: 'gracie'
	}
	])
	
budget = Budget.create([{
	name: 'Zachary', #budget 1
	amount: 200.00, 
	user_id: 1
	}, 
	{
	name: 'Home', #budget 2
	amount: 500.00, 
	user_id: 1
	},
	{
	name: 'Car', #budget 3
	amount: 300.00,
	user_id: 2
	},
	{
	name: 'Food', #budget 4
	amount: 200.00,
	user_id: 2
	}
	])
	
transaction = Transaction.create([{
	date: '2018-12-11', #transaction 1
	amount: 50.00,
	description: 'Target',
	budget_id: 1,
	is_deposit: 0
	},
	{
	date: '2018-12-10', #transaction 2
	amount: 20.00,
	description: 'Rite Aid',
	budget_id: 1,
	is_deposit: 0
	}
	])
	
item = Item.create([{
	name: 'Diapers'
	},
	{
	name: 'Wipes'
	},
	{
	name: 'Snacks'
	},
	{
	name: 'Cleaning Supplies'
	},
	{
	name: 'Soap'
	},
	{
	name: 'Paper Towels'
	}, 
	{
	name: 'Oil Change'
	}, 
	{
	name: 'Gas'
	},
	{
	name: 'Car Insurance'
	},
	{
	name: 'Hamburger'
	},
	{
	name: 'Bananas'
	},
	{
	name: 'Pizza'
	}
	])
	
transaction_item = TransactionItem.create([{
	transaction_id: 1,
	item_id: 1,
	quantity: 2,
	unit_amount: 25.00
	},
	{
	transaction_id: 2,
	item_id: 2,
	quantity: 2,
	unit_amount: 5.00
	},
	{
	transaction_id: 2,
	item_id: 3,
	quantity: 5,
	unit_amount: 2.00
	}
	])


	
	
	