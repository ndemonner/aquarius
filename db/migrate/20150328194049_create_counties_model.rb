class CreateCountiesModel < ActiveRecord::Migration
  def up
    HistoricalUsage.find_each do |usage|
      county = County.where(name: usage.name, code: usage.code, state: usage.state).first_or_create!
      usage.county = county
      usage.save!
    end
    FutureUsage.find_each do |usage|
      county = County.where(name: usage.name, code: usage.code, state: usage.state).first_or_create!
      usage.county = county
      usage.save!
    end
  end
end
