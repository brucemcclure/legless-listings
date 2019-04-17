class Breed < ApplicationRecord
    has_many :listings #, dependent: :destroy not necessary here
end
