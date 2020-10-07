Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :public do
    root to: 'reviews#index'
    get 'homes/about' => 'homes#about'
    get 'users/my_page' => 'users#my_page'
    resources :users, only: [:edit, :update]
    resources :reviews, only: [:new, :show, :create, :edit, :update, :destroy]
    resources :menus, only: [:show]
  end
end
