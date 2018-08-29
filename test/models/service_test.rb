# == Schema Information
#
# Table name: services
#
#  id               :bigint(8)        not null, primary key
#  title            :text
#  image            :text
#  price            :decimal(, )
#  user_id          :integer
#  time_frame_id    :integer
#  from_language_id :integer
#  to_language_id   :integer
#  document_id      :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
