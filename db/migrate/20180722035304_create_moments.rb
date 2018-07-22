class CreateMoments < ActiveRecord::Migration[5.1]
  def change
    create_table :moments do |t|
      t.references :user, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
