class RemoveVendorIdFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :vendor_id, :integer
  end
end
