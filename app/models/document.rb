# == Schema Information
#
# Table name: documents
#
#  id         :bigint(8)        not null, primary key
#  category   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Document < ApplicationRecord
  has_many :services

end
