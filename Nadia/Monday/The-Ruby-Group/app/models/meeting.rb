class Meeting < ActiveRecord::Base
  belongs_to   :leader, class_name: "User", foreign_key: "leader_id"
  has_many     :user_meetings
  has_many     :attendees, through: :user_meetings, source: :user

end
