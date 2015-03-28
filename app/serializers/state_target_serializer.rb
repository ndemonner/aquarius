class StateTargetSerializer < ActiveModel::Serializer
  attributes :id, :name, :reduction, :year, :total_future_usage, :total_goal_usage, :total_expected_usage
  
  has_many :target_usages
end