Rails.application.routes.draw do

  resources :contact_messages
  root 'main#home'

end
