Rails.application.routes.draw do
  resources :photo_galleries
  resources :events
	namespace :api, :defaults => {:format => :json} do
		namespace :v1 do
	 		resources :events
	 	end
	end  
  get '/events/:id/image' => 'events#image', as: :event_image
  get 'home', to: 'home#home'
  get 'contact', to: 'home#contact'
  root :to => redirect('/home')
end
