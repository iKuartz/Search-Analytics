# frozen_string_literal: true

class ArticleWeight < ApplicationRecord
  belongs_to :user
  belongs_to :article
end
