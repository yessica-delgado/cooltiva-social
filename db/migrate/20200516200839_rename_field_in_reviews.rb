class RenameFieldInReviews < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :content, :description
  end
end
