Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'stackexchangeuser', to: 'stackexhchangeuser#index'

  get 'upload', to: 'stackexhchangeuser#upload'
end
