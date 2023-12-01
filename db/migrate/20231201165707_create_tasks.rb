class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.text :task 
      t.string :status

      t.timestamps
    end
  end
end
