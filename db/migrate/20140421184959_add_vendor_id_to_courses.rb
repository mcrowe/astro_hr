class AddVendorIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :vendor_id, :integer
  end
end
