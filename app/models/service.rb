# == Schema Information
#
# Table name: services
#
#  id         :bigint(8)        not null, primary key
#  title      :text
#  image      :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Service < ApplicationRecord
  belongs_to :user, :optional => true
end
