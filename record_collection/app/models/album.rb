class Album < ApplicationRecord
    
    validates :title, presence: true
    validates :artist, presence: true
    validates :year_released, presence: true
end
