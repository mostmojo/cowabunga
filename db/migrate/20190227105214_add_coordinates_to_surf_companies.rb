class AddCoordinatesToSurfCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :surf_companies, :latitude, :float
    add_column :surf_companies, :longitude, :float
  end
end
