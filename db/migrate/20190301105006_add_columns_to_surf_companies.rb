class AddColumnsToSurfCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :surf_companies, :description, :text
    add_column :surf_companies, :facilities, :text
    add_column :surf_companies, :number, :string
    add_column :surf_companies, :email, :string
  end
end
