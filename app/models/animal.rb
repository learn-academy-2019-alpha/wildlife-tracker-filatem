class Animal < ApplicationRecord
    has_many :sightings
    validates :name, :latin_name, :kingdom, presence: true
    validate :name_validator
    validate :latin_name_validator
    validate :kingdom_validator
end

def name_validator 
    if name.match(/[A-Za-z]/)
    else 
        errors.add(:name, "Input only letter")
    end
end

    def latin_name_validator 
    if latin_name.match(/[A-Za-z]/)
    else 
        errors.add(:latin_name, "Input only letter")
    end
    end

    def kingdom_validator 
    if kingdom.match(/[a-z]/)
    else 
        errors.add(:kingdom, "Input only letter")
    end
    end
