class AddMoodToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :mood, :string
  end
end
