Rails.application.routes.draw do
  # 本番環境のルート設定のため追加
  root 'origins#top'

  # 簡単ログイン機能
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  # deviseのルーティング分け
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # ユーザ側ルーティング設定
  namespace :public do
    root 'reviews#index'
    get 'homes/about' => 'homes#about'
    get 'users/my_page/:id' => 'users#show', as: 'users/my_page'
    resources :users, only: [:edit, :update]
    resources :reviews, only: [:new, :show, :create, :edit, :update, :destroy]
    resources :restaurants, only: [:index, :show]
    resources :menus, only: [:show]
  end
end
