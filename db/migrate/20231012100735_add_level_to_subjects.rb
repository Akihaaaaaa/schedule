class AddLevelToSubjects < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :level, :integer
  end
end
