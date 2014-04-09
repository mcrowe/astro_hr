class AddCompanyIdToManager < ActiveRecord::Migration
  def change
    add_column :managers, :company_id, :integer
  end
end
