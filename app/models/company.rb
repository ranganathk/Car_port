# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  username   :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Company < ActiveRecord::Base
  # has_many :dealers

  validates :username, presence: true
  validates :password, presence: true
end
