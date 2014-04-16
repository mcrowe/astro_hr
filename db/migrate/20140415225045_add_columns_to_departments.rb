class AddColumnsToDepartments < ActiveRecord::Migration
  def change
    add_column :departments, :course_id, :integer
    add_column :departments, :category_id, :integer
  end
end
