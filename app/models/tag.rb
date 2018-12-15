class Tag < ApplicationRecord
    has_many :taggings
    has_many :forum_threads , through: :taggings
end