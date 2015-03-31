
5.times do
  User.create(:name => FFaker::Name.name, :email => FFaker::Internet.email, :password => "password")
end


5.times do
   Group.create(:owner => User.all.sample, :description => FFaker::HipsterIpsum.paragraph(3), :topic => FFaker::Product.product_name)
end

5.times do
   Meeting.create(:leader => User.all.sample, :description => FFaker::HipsterIpsum.paragraph(3),:time => rand(1..10))
end

5.times do
  User.all.each do|user|
    user.user_groups.create(:member => user, :group => Group.all.sample)
  end
end

5.times do
  User.all.each do|user|
    user.user_meetings.create(:attendee => user, :meeting => Meeting.all.sample)
  end
end
