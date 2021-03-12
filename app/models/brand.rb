class Brand < ApplicationRecord
    has_many :beers, dependent: :destroy
end
