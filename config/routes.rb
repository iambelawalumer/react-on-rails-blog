Rails.application.routes.draw do

  devise_for :users
  resources :posts do
    resources :comments
  end
  #get 'welcome/index'

  root 'welcome#index'

  get  '/category' => 'welcome#category', as: 'category'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
