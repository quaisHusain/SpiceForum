Rails.application.routes.draw do
  resources :answers do
  	resources :comments
  end
  resources :questions do
    resources :comments
  end
  resources :forums
  devise_for :users

  resources :comments do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "forums#index"
end
