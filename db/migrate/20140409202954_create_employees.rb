class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.references :department, index: true

      t.timestamps
    end
  end
end
