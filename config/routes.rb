Rails.application.routes.draw do
  resources :domitories do
    resources :posts
  end
  # resources :posts
  root 'welcome#index'
  get 'welcome/door'
  get 'welcome/open' => "welcome#open"
  get 'welcome/dooropen'
  get 'welcome/dooropenfail'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
