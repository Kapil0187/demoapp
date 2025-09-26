class CreateSubscriptions < ActiveRecord::Migration[8.0]
  def change
    create_table :subscriptions do |t|
      t.date :expires_at
      t.references :persion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
