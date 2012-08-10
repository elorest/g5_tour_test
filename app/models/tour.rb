class Tour < ActiveRecord::Base
	AVAILABLE_OPTIONS = ["pool", "rec_room", "movie_theater", "on_site_doctor", "time_machine"]
	serialize :options
	belongs_to :user

	validates :user_id, :uniqueness => {:message => "You already submitted information for this user."}
	validates :additional_questions, :options, :preferred_date, 
						:presence => true
	validates :rating,
						:numericality => {:greater_than => 0, :less_than => 6},
						:on => :update

	after_save do
		TourMailer.tour_requested(self.user).deliver
		TourMailer.request_confirmation(self.user).deliver
	end

  attr_accessible :additional_questions, :options, :preferred_date, :rating, :user_id
end
