class AddLengthToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :length, :string
  end
end
