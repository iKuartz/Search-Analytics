# frozen_string_literal: true

class AddForeignKeyToArticle < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :articles, :users
    add_foreign_key :articles, :themes
  end
end
