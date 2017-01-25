Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Generate new routes/url to be used later
  resources :contacts
  # Define the homepage here
  # Add new pages
  get '/about' => 'pages#about'
  # Always leave root at the bottom
  root 'pages#home'
end
