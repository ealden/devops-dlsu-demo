Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :articles

  get 'site/sha', to: 'site#sha'

  root 'welcome#index'
end
