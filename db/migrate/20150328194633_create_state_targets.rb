class CreateStateTargets < ActiveRecord::Migration
  def change
    create_table :state_targets do |t|
      t.string :name
      t.integer :reduction
      t.integer :year

      t.timestamps
    end
  end
end
