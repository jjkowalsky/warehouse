class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts, :force => true do |t|
      t.integer :pnum
      t.string :pname
      t.string :color
      t.integer :weight
      t.string :city

      t.timestamps
    end
    add_index:parts, :pname
    add_index:parts, :city
  end
end
