class AddForeignKeyToArticleWeight < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :article_weight, :articles
    add_foreign_key :article_weight, :users
  end
end
