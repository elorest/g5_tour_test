class UserInformation < ActiveRecord::Base
	belongs_to :user
	validates :first_name, :last_name, 
						:presence => true
	validates :phone_number, :presence => true
	validates :user_id, :uniqueness => {:message => "You already submitted information for this user."}
  attr_accessible :first_name, :last_name, :phone_number, :user_id
end
