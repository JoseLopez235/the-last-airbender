require "rails_helper"

RSpec.describe "As a user" do
  describe "When I visit '/'" do
    describe "And I Select 'Fire Nation' from the select field and I click 'Search For Members'
" do
      describe "Then I should be on page '/search'" do
        describe "Then I should see the total number of people who live in the Fire Nation." do
          it "And I should see a list with the detailed information for the 20 members of the Fire Nation" do
              visit root_path

              select "Fire Nation", from: :nation
              click_button "Search For Members"

              expect(current_path).to eq(search_path)
              expect(page).to have_content("FIRE NATION Members:")
              expect(page).to have_content("Name: Chan (Fire Nation admiral)")
              expect(page).to have_content("Name: Circus trainer")
              expect(page).to have_content("Name: Azula")
              expect(page).to have_content("Affiliation: Fire Nation")
              expect(page).to have_content("Name: Azulon")
          end
        end
      end
    end
  end
end
