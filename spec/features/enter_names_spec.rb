require 'spec_helper'

feature "players can enter their names" do
  scenario "the player fills in the name form" do
    sign_in_and_play
    expect(page).to have_text("Negan")
    expect(page).to have_text("Alpha")
  end
end