Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  resources :domitories do
    resources :posts
  end
  # resources :posts
  get 'welcome/door'
  get 'welcome/open' => "welcome#open"
  get 'welcome/dooropen'
  get 'welcome/dooropenfail'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
