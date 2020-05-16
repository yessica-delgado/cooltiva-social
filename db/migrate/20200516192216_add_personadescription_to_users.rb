class AddPersonadescriptionToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :persona_description, :text
  end
end
