class AddCategoryidToActivities < ActiveRecord::Migration[6.0]
  def change
    add_reference  :activities, :category, foreign_key: true
  end
end
