require 'spec_helper'

 describe Battle do
  feature "players can enter their names" do
    scenario "the player fills in the name form" do
      visit "/"
      fill_in "p1_name", :with => "Negan"
      fill_in "p2_name", :with => "Alpha"
      click_button("start_button")
      expect(page).to have_text("Player1 Negan and Player2 Alpha have entered the battle arena!")
    end
  end
 end