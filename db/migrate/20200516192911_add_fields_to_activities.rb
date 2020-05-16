class AddFieldsToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :title, :string
    add_column :activities, :who_description, :text
    add_column :activities, :why_description, :text
    add_column :activities, :what_description, :text
    add_column :activities, :meeting_address, :string
    add_column :activities, :activity_address, :string
    add_column :activities, :start_date, :date
    add_column :activities, :end_date, :date
    add_column :activities, :requirements, :text
  end
end
