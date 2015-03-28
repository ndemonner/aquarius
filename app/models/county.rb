# == Schema Information
#
# Table name: counties
#
#  id    :integer          not null, primary key
#  name  :string
#  code  :string
#  state :string
#

class County < ActiveRecord::Base
  has_many :future_usages
  has_many :historical_usages
end
