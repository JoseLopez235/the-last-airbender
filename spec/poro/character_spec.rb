require "rails_helper"

RSpec.describe Character do
  it "methods" do
    characters = CharacterSearchFacade.character_search("fire nation")
    expect(characters[0]).to be_an(Character)
    expect(characters[0].name).to eq("Chan (Fire Nation admiral)")
    expect(characters[0].affiliation).to eq("Fire Nation Navy")
    expect(characters[0].image).to eq(nil)
    expect(characters[0].all_allies).to eq(["Ozai"])
    expect(characters[0].all_enemies).to eq(["Earth Kingdom"])

    expect(characters[1].image).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")

    expect(characters[9].all_enemies).to eq(["Ozai"])
    expect(characters[14].all_allies).to eq(["Her husband"])
  end
end
