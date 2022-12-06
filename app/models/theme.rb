class Theme < ApplicationRecord
    belongs_to :article
    has_many :theme_weights
end
