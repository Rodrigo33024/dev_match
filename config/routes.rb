Rails.application.routes.draw do
  resources :contacts
  get 'about', to: 'pages#about'
  root to: 'pages#index'
  get 'contact-us', to: 'contacts#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
