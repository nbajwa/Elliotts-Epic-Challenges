class Group < ActiveRecord::Base
 belongs_to :owner, class_name: "User", foreign_key: "owner_id"
 has_many   :members, through: :user_groups, source: :user
end
