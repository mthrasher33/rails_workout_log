class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :workout
      t.datetime :date
      t.string :workout
      t.string :mood
      t.string :length

      t.timestamps null: false
    end
  end
end
