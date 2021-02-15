class Event < ApplicationRecord
	belongs_to :user
	
	has_many :attendances
	has_many :users, through: :attendances

	validates :start_date, presence: true, validate :start_in_future
	validates :duration, presence: true, validate :multiple_of_5
	validates :title, presence: true, length: { :within => 5..140}
	validates :description, presence: true, length: { :within => 20..1000}
	validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 1000}
	validates :location, presence: true

	def start_in_future
		if start_date != nil && Time.now > start_date
		then puts "La date choisie doit être dans le futur ! "
		end
	end

	def multiple_of_5
		if duration != nil && duration % 5 != 0
		then puts "La durée doit être un multiple de 5"
		end
	end

end
