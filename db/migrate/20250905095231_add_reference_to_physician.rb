class AddReferenceToPhysician < ActiveRecord::Migration[8.0]
  def change
    add_reference :physicians, :appointments
    add_reference :patients, :appointments
  end
end
