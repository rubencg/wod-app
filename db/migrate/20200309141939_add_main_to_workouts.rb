class AddMainToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :is_main, :bool
  end
end
