# frozen_string_literal: true

class Article < ApplicationRecord
  belongs_to :user
  has_many :themes
  has_many :article_weights
end
