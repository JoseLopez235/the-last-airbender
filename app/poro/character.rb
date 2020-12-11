class Character
  attr_reader :name,
              :affiliation,
              :image
  def initialize(character)
    @name = character[:name]
    @allies = character[:allies]
    @enemies = character[:enemies]
    @affiliation = character[:affiliation]
    @image = character[:photoUrl]
  end

  def all_allies
    if @allies.include?("")
      @allies.delete("")
      @allies
    else
      @allies
    end
  end

  def all_enemies
    if @enemies.include?("")
      @enemies.delete("") 
      @enemies
    else
      @enemies
    end
  end
end
