class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments, :force => true do |t|
      t.integer :snum
      t.integer :pnum
      t.integer :qty
      t.decimal :price, :precision=>5, :scale => 3

      t.timestamps
    end
  end
end
