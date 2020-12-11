class CharacterSearchFacade
  def self.character_search(nation)
    characters = AvatarApiService.search_characters(nation)
    characters.map do |character|
      Character.new(character)
    end
  end
end
