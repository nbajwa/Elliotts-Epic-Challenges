class CreateUserMeetings < ActiveRecord::Migration
  def change
    create_table :user_meetings do |t|
      t.belongs_to :attendee
      t.belongs_to :meeting
    end
  end
end
