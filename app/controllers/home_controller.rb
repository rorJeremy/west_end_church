class HomeController < ApplicationController
	def home
		@events = Event.all
	end

	def contact
	end
end
