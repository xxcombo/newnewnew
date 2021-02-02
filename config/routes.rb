Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  resources :posts
  resources :domitories do
    resources :posts
  end
  # resources :posts
  root 'welcome#index'
  get 'comments/create'
  get 'comments/destroy'
  get 'welcome/door'
  get 'welcome/open' => "welcome#open"
  get 'welcome/dooropen'
  get 'welcome/dooropenfail'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
