Blog::Application.routes.draw do
  resources :accounts

  resources :users

  resources :posts do
    resources :comments
  end
  root 'welcome#index'
end  
  
