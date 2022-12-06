class User < ApplicationRecord
    has_many :article_weight
    has_many :theme_weight
    has_many :article_weight
end
