class User < ActiveRecord::Base
	has_one :tour
	has_one :user_information
	validates :email,   
            :presence => true,   
            :uniqueness => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }  
  validates :ip_address, :presence => true

  before_save do
  	self.verification = Digest::SHA1.hexdigest(email)
  end 

  after_save do
  	TourMailer.verification(self).deliver
  end		

  attr_accessible :email, :ip_address, :verification
end
