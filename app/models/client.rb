# == Schema Information
#
# Table name: clients
#
#  id              :bigint(8)        not null, primary key
#  email           :text
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Client < ApplicationRecord
  has_secure_password
validates :email, :presence => true, :uniqueness => true

    has_many :orders
end
