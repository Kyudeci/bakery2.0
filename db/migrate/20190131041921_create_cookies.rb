class CreateCookies < ActiveRecord::Migration[5.2]
  def change
    create_table :cookies do |t|
      t.string :cookie_type
      t.string :flavors
      t.integer :amount
      t.integer :price

      t.timestamps
    end
  end
end
