class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.integer :snum
      t.string :sname, :unique=>true
      t.integer :status
      t.string :city

      t.timestamps
    end
    add_index:suppliers, :snum, :unique=>true
    add_index:suppliers, :city
  end
end

