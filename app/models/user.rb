# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  email           :text
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  adm             :boolean
#  translator      :boolean
#

class User < ApplicationRecord
  has_secure_password
validates :email, :presence => true, :uniqueness => true
has_many :services
has_and_belongs_to_many :orders

include PgSearch
pg_search_scope :search_for, against: %i(email language_from)
end
