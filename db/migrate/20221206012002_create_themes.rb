# frozen_string_literal: true

class CreateThemes < ActiveRecord::Migration[7.0]
  def change
    create_table :themes do |t|
      t.string :theme
      t.integer :relevance

      t.timestamps
    end
  end
end
