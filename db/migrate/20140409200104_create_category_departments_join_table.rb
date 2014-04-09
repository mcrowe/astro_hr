class CreateCategoryDepartmentsJoinTable < ActiveRecord::Migration
  def change
    create_table "categories_departments", id: false, force: true do |t|
      t.integer "category_id", null: false
      t.integer "department_id", null: false
    end
  end
end
