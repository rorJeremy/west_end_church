Rails.application.routes.draw do
  resources :events
  get 'home', to: 'home#home'
  root :to => redirect('/home')
end
