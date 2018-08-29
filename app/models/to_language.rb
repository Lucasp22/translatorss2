# == Schema Information
#
# Table name: to_languages
#
#  id          :bigint(8)        not null, primary key
#  language_to :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ToLanguage < ApplicationRecord
  has_many :services
end
