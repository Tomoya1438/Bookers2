Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'home/about', to: 'homes#about', as: 'about'
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update]
  resources :users, only: [:index, :show, :edit, :update, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

