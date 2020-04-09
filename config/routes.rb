Rails.application.routes.draw do
  get 'products/index'
  get 'products/new'
  get 'products/create'
  get 'products/show'
  get 'products/edit'
  get 'products/update'
  get 'products/destroy'
  get 'stores/index'
  get 'stores/new'
  get 'stores/create'
  get 'stores/show'
  get 'stores/edit'
  get 'stores/update'
  get 'stores/destroy'
  resources :categories
  resources :stores
  resources :products
  get 'categories/index'
  get 'categories/new'
  get 'categories/create'
  get 'categories/show'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" => 'products#index'
end
