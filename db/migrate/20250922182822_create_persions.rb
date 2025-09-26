class CreatePersions < ActiveRecord::Migration[8.0]
  def change
    create_table :persions do |t|
      t.string :name

      t.timestamps
    end
  end
end
