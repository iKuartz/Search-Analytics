class AddUserToThemeWeight < ActiveRecord::Migration[7.0]
  def change
    add_reference :theme_weights, :user
  end
end
