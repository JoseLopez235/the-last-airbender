require "rails_helper"

RSpec.describe AvatarApiService do
  describe "Methods" do
    it "search_characters" do
      characters = AvatarApiService.search_characters("Fire Nation")
      expect(characters.count).to eq(20)
      expect(characters[0][:name]).to eq("Chan (Fire Nation admiral)")
      expect(characters[0][:allies][0]).to eq("Ozai")
      expect(characters[0][:enemies][0]).to eq("Earth Kingdom")
      expect(characters[0][:affiliation]).to eq("Fire Nation Navy")
    end
  end
end
