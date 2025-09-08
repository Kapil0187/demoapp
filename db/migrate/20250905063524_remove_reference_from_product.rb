class RemoveReferenceFromProduct < ActiveRecord::Migration[8.0]
  def change
    remove_reference :products,:employees, polymorphic: :false
  end
end
