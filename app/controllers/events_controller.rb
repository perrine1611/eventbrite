class EventsController < ApplicationController
	
before_action :authenticate_user!, only: [:secret]

	def index
		@event = Event.all
	end

	def secret
	end

	def show
	end
end
