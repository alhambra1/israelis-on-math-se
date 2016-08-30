Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'seusers', to: 'seusers#index'
  post 'seusers', to: 'seusers#upload'
	get 'seusers/page', to: 'seusers#page'

	get 'upload', to: 'upload#index'
end
