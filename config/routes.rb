Rails.application.routes.draw do
  root to: 'iget#index'
  resources :iget

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
