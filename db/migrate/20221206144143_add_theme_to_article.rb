# frozen_string_literal: true

class AddThemeToArticle < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :theme
  end
end
