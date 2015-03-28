# == Schema Information
#
# Table name: state_targets
#
#  id         :integer          not null, primary key
#  name       :string
#  reduction  :integer
#  year       :string
#  created_at :datetime
#  updated_at :datetime
#

class StateTarget < ActiveRecord::Base
  has_many :target_usages
end
