class EventsController < ApplicationController
	
before_action :authenticate_user!, except: [:index]

	def index
		@event = Event.all
	end

	def show
	end
end
