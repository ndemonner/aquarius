class CreateStateTargets < ActiveRecord::Migration
  def change
    create_table :state_targets do |t|
      t.string :name
      t.integer :reduction
      t.string :year
      
      t.timestamps
    end
  end
end
