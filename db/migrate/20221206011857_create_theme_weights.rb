class CreateThemeWeights < ActiveRecord::Migration[7.0]
  def change
    create_table :theme_weights do |t|
      t.integer :weight

      t.timestamps
    end
  end
end
