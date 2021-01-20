class CreateBundlesFurnitures < ActiveRecord::Migration[6.0]
  def change
    create_table :bundles_furnitures do |t|
      t.references :bundle, null: false, foreign_key: true
      t.references :furniture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
