Rails.application.routes.draw do
  resources :tasks
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
  get 'static/top'
  post 'static/ajax_update', to: 'static#ajax_update'
  post 'static/ajax_update2', to: 'static#ajax_update2'
  resources :tasks do
    collection do
    post '/:id/completed' => 'tasks#completed'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
