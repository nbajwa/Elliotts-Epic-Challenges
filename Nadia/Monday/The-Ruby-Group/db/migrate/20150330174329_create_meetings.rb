class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.belongs_to :leader
      t.text       :description
      t.integer    :time

      t.timestamps
    end
  end
end
