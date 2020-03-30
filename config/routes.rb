Rails.application.routes.draw do
  devise_for :models
  root 'welcome#index'
  get 'welcome/index'

  resources :docs
end
