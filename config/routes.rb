Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale 
end
