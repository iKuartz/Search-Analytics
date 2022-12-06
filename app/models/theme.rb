# frozen_string_literal: true

class Theme < ApplicationRecord
  belongs_to :article
  has_many :theme_weights
end
