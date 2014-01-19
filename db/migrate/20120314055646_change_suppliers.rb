class ChangeSuppliers < ActiveRecord::Migration
  def up
    rename_column :suppliers, :sname, :lname
    add_column :suppliers, :fname, :string, :null=>true
  end

  def down
    remove_column :suppliers, :fname
    rename_column :suppliers, :lname, :sname
  end
end
