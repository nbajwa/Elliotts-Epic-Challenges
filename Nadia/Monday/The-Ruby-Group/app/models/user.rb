class User < ActiveRecord::Base
  has_many :user_meetings , foreign_key: "attendee_id"
  has_many :meetings, through: :user_meetings
  has_many :user_groups, foreign_key: "member_id"
  has_many :groups, through: :user_groups

  validates :name, :length => { :minimum => 3, :message => "must be at least 3 characters, fool!" }
  validates :email, :uniqueness => true, :format => /.+@.+\..+/ # imperfect, but okay

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(pass)
    @entered_password = pass
    @password = Password.create(pass)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    return user if user && (user.password == password)
  end



end
