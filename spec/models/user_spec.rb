require 'spec_helper'

describe User do
  it "should create verification code" do
  	user = User.new(email: "isaac@isaacsloan.com", ip_address: "127.0.0.1")
  	user.save
  	user.verification.should_not be_empty
  end
end
