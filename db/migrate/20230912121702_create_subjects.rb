class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.text :contents
      t.string :grade
      t.string :name2
      t.integer :user_id

      t.timestamps
    end
  end
end
