class RenameFieldInActivities < ActiveRecord::Migration[6.0]
  def change
    remove_column :activities, :name
  end
end
