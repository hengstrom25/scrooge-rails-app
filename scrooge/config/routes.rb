Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'

  post 'logout', to: 'sessions#destroy'
  
  resources :users do #only: [:new, :create, :show]
  	resources :budgets
  end

delete 'logout' => 'sessions#destroy'
	
	resources :budgets do
		resources :transactions
		get 'users', to: 'budgets#users'
	end

	resources :transactions
	
<<<<<<< HEAD
	devise_for :users
	
=======
>>>>>>> c24e02caf0d858aa77a0be83c7348b2329bfa38a
	
	
end
