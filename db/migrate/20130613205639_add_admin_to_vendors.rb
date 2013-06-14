class AddAdminToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :admin, :boolean
  end
end
