class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :vendor_id
      t.date :start_date
      t.date :end_date
      t.text :description
      t.integer :price
      t.string :location

      t.timestamps
    end
  end
end
