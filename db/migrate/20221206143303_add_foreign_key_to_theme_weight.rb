class AddForeignKeyToThemeWeight < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :theme_weights, :users
    add_foreign_key :theme_weights, :themes
  end
end
