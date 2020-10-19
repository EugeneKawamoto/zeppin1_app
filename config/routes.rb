Rails.application.routes.draw do
  root 'origins#top'

  # 簡単ログイン機能
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :public do
    root 'reviews#index'
    get 'homes/about' => 'homes#about'
    get 'users/my_page/:id' => 'users#show', as: 'users/my_page'
    get 'search' => 'restaurants#search'
    resources :users, only: [:edit, :update]
    resources :reviews, only: [:show, :create, :edit, :update, :destroy]
    resources :restaurants, only: [:index, :show]
    resources :menus, only: [:index, :show] do
      resource :bookmarks, only: [:create, :destroy]
    end
  end
end
