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

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
