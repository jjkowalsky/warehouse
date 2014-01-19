class DropNumbersColumnsFromTables < ActiveRecord::Migration
  def up
    remove_index :suppliers, :column => :snum
    remove_column :suppliers, :snum
    remove_column :parts, :pnum
  end

  def down
    add_column :parts, :pnum, :integer
    add_column :suppliers, :snum, :integer
    add_index :suppliers, :snum, :unique=>true
  end

end
