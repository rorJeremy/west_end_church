Rails.application.routes.draw do
  resources :events
	namespace :api do
		namespace :v1 do
	 		resources :events, :defaults => { :format => 'json' }
	 	end
	end  
  get '/events/:id/image' => 'events#image', as: :event_image
  get 'home', to: 'home#home'
  get 'contact', to: 'home#contact'
  root :to => redirect('/home')
end
