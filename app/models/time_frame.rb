# == Schema Information
#
# Table name: time_frames
#
#  id         :bigint(8)        not null, primary key
#  urgercy    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TimeFrame < ApplicationRecord
  has_many :services
  
end
