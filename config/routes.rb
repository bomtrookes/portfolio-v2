Rails.application.routes.draw do
  get 'blogs/index'
  get 'blogs/show'
  get 'blogs/new'
  get 'blogs/edit'
  get 'projects/index'
  get 'projects/show'
  get 'projects/new'
  get 'projects/edit'
  devise_for :users

  root "home#index"
end
