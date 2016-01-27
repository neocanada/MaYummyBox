class CreateYummyboxes < ActiveRecord::Migration
  def change
    create_table :yummyboxes do |t|
      t.string :sku
      t.string :name
      t.monetize :price, currency: { present: false }

      t.timestamps null: false
    end
  end
end
