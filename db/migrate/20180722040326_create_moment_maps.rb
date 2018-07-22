class CreateMomentMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :moment_maps do |t|
      t.references :post, foreign_key: true
      t.references :moment, foreign_key: true

      t.timestamps
    end
  end
end
