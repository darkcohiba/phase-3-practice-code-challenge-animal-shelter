class Adopter < ActiveRecord::Base
    has_many :pets
    has_many :shelters, through: :pets

    def full_name
        "#{first_name} #{last_name}"
    end

    def adopt(pet)
        if !pet.adopted?
            pet.update(adopted?: true, adopter_id: self.id)
        end
    end

    def fav_pet
        return nil if self.pets.count == 0

        self.pets
        .group_by { |pet| pet.species }
        .max_by { |species| species.count }
        .first
    end

end
