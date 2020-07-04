class Flat < ApplicationRecord
  validates :name, :address, :price_per_night, :number_of_guests, presence: true

  def self.search(search)
    if search
      # flat = Flat.find_by(name: search)
      flat = Flat.where("name LIKE :search OR address LIKE :search", search: "%#{search}%")
      if @flats
        self.where(id: flat)
      else
        @flats = Flat.all
      end
    else
      @flats = Flat.all
    end
  end
end
