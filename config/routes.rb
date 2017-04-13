Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show] do
    resources :ingredients, only: [:index, :show]
  end

  resources :doses, only:[:index, :show]


  root to: 'cocktails#index'
end
