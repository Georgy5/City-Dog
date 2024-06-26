Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  resources :venues, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
    resources :venuetags, only: :create
  end
  resources :reviews, only: [:show]
end
