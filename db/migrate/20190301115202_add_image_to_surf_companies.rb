class AddImageToSurfCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :surf_companies, :image, :string
  end
end
