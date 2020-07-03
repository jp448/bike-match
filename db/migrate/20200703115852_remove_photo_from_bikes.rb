class RemovePhotoFromBikes < ActiveRecord::Migration[6.0]
  def change
    remove_column :bikes, :photo, :string
  end
end
