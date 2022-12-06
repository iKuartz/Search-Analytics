class AddForeignKeyToArticleWeight < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :article_weights, :articles
    add_foreign_key :article_weights, :users
  end
end
