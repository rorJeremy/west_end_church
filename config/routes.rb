Rails.application.routes.draw do
  resources :events
  get 'home', to: 'home#home'
  get 'contact', to: 'home#contact'
  root :to => redirect('/home')
end
