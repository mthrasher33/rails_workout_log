class AddWorkoutToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :workout, :string
  end
end
