# == Schema Information
#
# Table name: from_languages
#
#  id            :bigint(8)        not null, primary key
#  language_from :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class FromLanguage < ApplicationRecord
  has_many :services

end
