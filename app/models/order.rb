# == Schema Information
#
# Table name: orders
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer
#  client_id  :integer
#  service_id :integer
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :client, :optional => true
  
  has_many :services, through: :users

end
