class DropCategoriesDepartmentsTable < ActiveRecord::Migration
    def up
    drop_table :categories_departments
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
