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
	
	
	
end
