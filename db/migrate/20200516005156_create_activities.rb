class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.integer :capacity
      t.integer :donation

      t.timestamps
    end
  end
end
