class AddPriceToSurfCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :surf_companies, :price, :string
  end
end
