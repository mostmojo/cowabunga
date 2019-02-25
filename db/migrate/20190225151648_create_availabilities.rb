class CreateAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.string :time
      t.string :date
      t.references :surf_company, foreign_key: true

      t.timestamps
    end
  end
end
