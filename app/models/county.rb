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
end
