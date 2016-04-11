Rails.application.routes.draw do
	root 'static_pages#home'
	
	get '/empresa', to: 'static_pages#company'
	get '/info', to: 'static_pages#info'

	get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale 
	match '/contacts',     to: 'contacts#new',             via: 'get'
	resources "contacts", only: [:new, :create]
end
