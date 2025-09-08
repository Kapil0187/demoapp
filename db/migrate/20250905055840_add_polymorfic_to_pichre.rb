class AddPolymorficToPichre < ActiveRecord::Migration[8.0]
  def change
    add_column :pictures, :imageable_id, :bigint
    add_column :pictures, :imageable_type, :string
    add_reference :products, :employees, polymorphic: true
  end
end
