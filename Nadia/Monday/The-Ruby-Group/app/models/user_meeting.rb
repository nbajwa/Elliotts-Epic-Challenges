class UserMeeting < ActiveRecord::Base
  belongs_to :attendee, class_name: "User"
  belongs_to :meeting
end
