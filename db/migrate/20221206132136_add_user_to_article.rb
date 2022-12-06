class AddUserToArticle < ActiveRecord::Migration[7.0]
  def change
    add_reference :article, :user
  end
end
