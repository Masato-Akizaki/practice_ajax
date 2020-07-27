Rails.application.routes.draw do
  root 'top#index'
  resources :fruits do
    collection do
      get 'content'
    end
  end
  get 'practice/index'
  post 'practice/index'
  resources :apples
  resources :users do
    collection do
	  post '/:id/user_private' => 'users#user_private'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
