class CreateUserGroups < ActiveRecord::Migration
  def change
    create_table :user_groups do |t|
      t.belongs_to :member
      t.belongs_to :group

    end
  end
end
