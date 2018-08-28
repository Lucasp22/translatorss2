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
  belongs_to :from_language, :optional => true
  belongs_to :to_language, :optional => true
  belongs_to :document, :optional => true
  belongs_to :time_frame, :optional => true

  has_many :orders, through: :users

  # validates_presence_of :title, :user_id

end
