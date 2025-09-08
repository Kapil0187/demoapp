class Product < ApplicationRecord
    validates :name, presence: true
    has_many :pictures, as: :imageable
end
