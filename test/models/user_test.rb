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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
