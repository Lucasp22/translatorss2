Services.destroy_all

s1 = Service.create :title => '1231'
s2 = Service.create :title => '1232'
s3 = Service.create :title => '1233'

Users.destroy_all
u1 = User.create :email => 'craigsy@ga.co', :password => 'chicken'
u2 = User.create :email => 'jonesy@ga.co', :password => 'chicken'

u1.services << s2
u2.services << s1
u2.services << s3
