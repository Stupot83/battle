feature "attack" do
  scenario "player1 can attack player2" do
    sign_in_and_play
    click_link('attack_button')
    expect(page).to have_content("Negan attacked Alpha")
  end
end