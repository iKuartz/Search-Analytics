# frozen_string_literal: true

class AddArticleToArticleWeights < ActiveRecord::Migration[7.0]
  def change
    add_reference :article_weights, :article
  end
end
