class TourMailer < ActionMailer::Base
  default from: "from@example.com"

  def verification(user)
  	@user = user
  	@url = verification_url(user.id, user.verification)
  	mail(:to => @user.email, :subject => "Click to verify your account.")
  end

   def tour_requested(user)
    @user = user
    mail(:to => "tours@example.com", :subject => "A new tour has been requested.")
  end
  
  def request_confirmation(user)
    @user = user
    mail(:to => @user.email, :subject => "Thanks for your recent tour request.")
  end
end
