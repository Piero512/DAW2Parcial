class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :desc
      t.string :deadline
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
