class AddThemeToThemeWeights < ActiveRecord::Migration[7.0]
  def change
    add_reference :theme_weights, :theme
  end
end
