Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/auth/facebook/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  #post 'logout', to: 'sessions#destroy'
  
  resources :users do #only: [:new, :create, :show]
  	resources :budgets
  end

delete 'logout' => 'sessions#destroy'
	
	resources :budgets do
		resources :transactions
	end

	resources :transactions do
		#resources :items
		resources :transaction_items
	end
	
	resources :items
	
	get '/big' => 'transactions#big'
	

end
