class RemoveColumnFromPictures < ActiveRecord::Migration[8.0]
  def change
    remove_column :pictures, :imageable_id, :bigint
    remove_column :pictures, :imageable_type, :string
  end
end
