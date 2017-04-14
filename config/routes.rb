Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only:[:index, :show, :destroy, :new, :create]
    resources :ingredients, only: [:index, :show]
  end




  root to: 'cocktails#index'
end
