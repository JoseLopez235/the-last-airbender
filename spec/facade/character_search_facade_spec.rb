require "rails_helper"

RSpec.describe CharacterSearchFacade do
  it "character_search method" do
    characters = CharacterSearchFacade.character_search("fire nation")
    expect(characters[0].name).to eq("Chan (Fire Nation admiral)")
    expect(characters[2].name).to eq("Bujing")
  end
end
