Rails.application.routes.draw do
  resources :hashtags
  resources :albums
  devise_for :users
  resources :comments
  get 'pages/info'

	root to: redirect('/pics')
  resources :pics
  resource :user, only: [:edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
