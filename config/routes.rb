Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'my_portfolio', to: 'users#my_portfolio'
  root 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'
  resources :user_stocks, only: [:create, :destroy]
  get 'my_friends', to: 'users#my_friends'
	resources :friendships
	resources :users, only: [:show]
  get 'search_friends', to: 'users#search'

end
