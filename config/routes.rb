Rails.application.routes.draw do
  # 簡単ログイン機能
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :public do
    root to: 'reviews#index'
    get 'homes/about' => 'homes#about'
    get 'users/my_page/:id' => 'users#show', as: 'users/my_page'
    resources :users, only: [:edit, :update]
    resources :reviews, only: [:new, :show, :create, :edit, :update, :destroy]
    resources :menus, only: [:show]
  end
end
