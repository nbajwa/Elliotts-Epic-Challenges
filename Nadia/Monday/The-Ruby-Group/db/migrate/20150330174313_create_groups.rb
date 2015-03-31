class CreateGroups < ActiveRecord::Migration
  def change
    create_table   :groups do |t|
      t.belongs_to   :owner
      t.text         :description
      t.string       :topic

    end
  end
end
