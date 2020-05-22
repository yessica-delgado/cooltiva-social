class AddWebsiteToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :website, :string
  end
end
