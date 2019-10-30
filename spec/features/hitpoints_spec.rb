feature "hitpoints" do
  scenario "player 1's HP is displayed" do
    sign_in_and_play
    expect(page).to have_selector("p#p1_hp", text: "HP")
  end
  scenario "player 2's HP is displayed" do
    sign_in_and_play
    expect(page).to have_selector("p#p2_hp", text: "HP")
  end
end