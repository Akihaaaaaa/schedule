class AddLevelToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :level, :integer
  end
end
