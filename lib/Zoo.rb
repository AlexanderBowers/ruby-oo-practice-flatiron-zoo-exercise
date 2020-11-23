class Zoo

    @@all = []
    attr_reader :location, :name

    def initialize(location, name)
        @location = location
        @name = name
        @@all << self
    end
     
    def self.all
        @@all
    end
    
    def animals
        Animal.all.select {|animal| animal.zoo == self}
    end

    def animal_species
     species = self.animals.map {|animal| animal.species}
     species.uniq
    end

    def find_by_species(species)
        self.animals.select{|animal| animal.species == species}
    end

    def animal_nicknames
        self.animals.map{|animal| animal.nickname}
    end

    def self.find_by_location(location)
        @@all.find {|zoo| zoo.location == location}
    end

end
