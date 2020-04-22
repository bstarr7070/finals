class Hero
  attr_accessor :name, :hitpoints, :strength, :intelligence, :skills
  
  def initialize(name, hitpoints, strength, intelligence,array_of_skills)
    self.name = name
    self.hitpoints = hitpoints
    self.strength = strength
    self.intelligence = intelligence
    self.skills = array_of_skills
  end

  def name=(name_input)
    if name_input == ""
    raise "can't be an empty string"
    end
    @name = name_input
  end

  def hitpoints=(maxhp)
    @hitpoints = maxhp
  end

  def strength=(str)
    @strength = str
  end

  def intelligence=(int)
    @intelligence = int
  end

  def skills=(array_of_skills)
    if array_of_skills.is_a?(Array)
    @skills = array_of_skills
    end
  end

  def stats
    "#{hitpoints} \n" +
    "#{strength}, #{intelligence} \n" 


    
  end

  def abilities
      "#{skills}"
  end



end

class Warrior < Hero
  def initialize(name, hitpoints, strength, intelligence)
    self.name = name
    self.hitpoints = 1250
    self.strength = 100
    self.intelligence = 50
    self.skills = ["power strike", "double attack", "shield bash"]
  end
end


class Rogue < Hero
  def initialize(name, hitpoints, strength, intelligence)
    self.name = name
    self.hitpoints = 1000
    self.strength = 75
    self.intelligence = 75
    self.skills = ["backstab", "sucker punch", "hamstring"]
  end
end

class Mage < Hero
  def initialize(name, hitpoints, strength, intelligence)
    self.name = name
    self.hitpoints = 750
    self.strength = 50
    self.intelligence = 100
    self.skills = ["fireball", "summon spirit", "ice blast"]
  end
end

name = Warrior.new(1250, 100, 50, ["power strike", "double attack", "shield bash"])
