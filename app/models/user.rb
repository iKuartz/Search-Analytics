# frozen_string_literal: true

class User < ApplicationRecord
  has_many :article_weights
  has_many :theme_weights
  has_many :articles
end
