Rails.application.routes.draw do
  resources :categories
  get 'categories/index'
  get 'categories/new'
  get 'categories/create'
  get 'categories/show'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" => 'categories#index'
end
