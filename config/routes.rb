Rails.application.routes.draw do
  get 'home', to: 'home#home'
  root :to => redirect('/home')
end
