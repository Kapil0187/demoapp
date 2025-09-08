class AddReferenceToPictures < ActiveRecord::Migration[8.0]
  def change
    add_reference :pictures, :imageable, polymorphic: true
  end
end
