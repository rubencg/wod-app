class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.integer :ScheduledDateInteger
      t.string :Type
      t.integer :WhiteBoardDisplayOrder
      t.string :Title
      t.text :Description

      t.timestamps
    end
  end
end
