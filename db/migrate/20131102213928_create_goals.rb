class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.datetime :completed_at
      t.text :description

      t.timestamps
    end
  end
end
