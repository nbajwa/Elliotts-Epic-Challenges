class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.belongs_to :leader
      t.belongs_to :group
      t.text       :description
      t.integer    :time

      t.timestamps
    end
  end
end
