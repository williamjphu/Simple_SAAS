Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Define the homepage here
  
  # Add new pages
  get '/about' => 'pages#about'
  # Always leave root at the bottom
  root 'pages#home'
end
