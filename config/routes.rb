Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles

  get 'site/sha', to: 'site#sha'

  root 'welcome#index'
end
