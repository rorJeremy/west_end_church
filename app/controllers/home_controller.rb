class HomeController < ApplicationController
	def home
		@events = Event.all.sort_by &:start_date
		@upcoming_event = @events.shift


		upcoming_event_date = @upcoming_event.start_date
		countdown = Time.now.to_date.distance_to(upcoming_event_date)
		@days_left = countdown[:days]
		@months_left = countdown[:months]
		@years_left = countdown[:years]

	end
	
	def contact
	end
end
