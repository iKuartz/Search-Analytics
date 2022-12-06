# frozen_string_literal: true

class ThemeWeight < ApplicationRecord
  belongs_to :user
  belongs_to :theme
end
