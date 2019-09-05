class Like < ApplicationRecord
    belongs_to :comment
    belongs_to :blog, through: :comment
end
