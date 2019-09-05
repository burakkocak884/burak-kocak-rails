class Blog < ApplicationRecord
    has_many :comments
    has_many :likes, through: :comments
end
