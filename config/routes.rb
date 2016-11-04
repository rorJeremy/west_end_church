Rails.application.routes.draw do
  resources :events
  get '/events/:id/image' => 'events#image', as: :event_image
  get 'home', to: 'home#home'
  get 'contact', to: 'home#contact'
  root :to => redirect('/home')
end
