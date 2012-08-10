class Tour < ActiveRecord::Base
  attr_accessible :additional_questions, :options, :preferred_date, :rating, :user_id
end
