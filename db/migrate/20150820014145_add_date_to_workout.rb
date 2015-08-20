class AddDateToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :date, :timestamp
  end
end
