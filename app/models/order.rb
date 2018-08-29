# == Schema Information
#
# Table name: orders
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer
#  service_id :integer
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord

  has_and_belongs_to_many :users
  has_many :services, through: :users

end
