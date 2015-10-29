Rails.application.routes.draw do
  root to: "home#set_instance"

  # resources :home, only: [:set_instance]
  match 'home/set_instance' => 'home#set_instance', :via => [:get, :post]
end

