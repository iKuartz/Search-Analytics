# frozen_string_literal: true

class AddUserToArticleWeight < ActiveRecord::Migration[7.0]
  def change
    add_reference :article_weights, :user
  end
end
