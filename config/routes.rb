Rails.application.routes.draw do
  resources :fruits do
    collection do
      get 'content'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
