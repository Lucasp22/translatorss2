Service.destroy_all

s1 = Service.create :title => '1231'
s2 = Service.create :title => '1232'


FromLanguage.destroy_all
lf1 = FromLanguage.create :language_from => 'Portuguese'
lf2 = FromLanguage.create :language_from => 'Spanish'

ToLanguage.destroy_all
lt1 = ToLanguage.create :language_to => 'English'
lt2 = ToLanguage.create :language_to => 'Spanish'

User.destroy_all
u1 = User.create :email => 'craigsy@ga.co', :password => 'chicken', :translator => false, :adm => false
u2 = User.create :email => 'jonesy@ga.co', :password => 'chicken', :translator => true, :adm => false

Document.destroy_all
d1 = Document.create :category => 'Passport'
d2 = Document.create :category => 'Driver Licence'

Order.destroy_all
o1 = Order.create :comment => 'Order1'
o2 = Order.create :comment => 'Order2'

TimeFrame.destroy_all
t1 = TimeFrame.create :urgercy => '24'
t2 = TimeFrame.create :urgercy => '48'



s1.from_language = lf1
s1.to_language = lt1
s2.from_language = lf2
s2.to_language = lt2

s1.document = d1
s2.document = d2



u1.services << s2
u2.services << s1
