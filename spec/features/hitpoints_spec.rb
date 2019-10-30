feature 'hitpoints' do
  scenario 'player 1s HP is displayed' do
    sign_in_and_play
    expect(page).to have_selector('#p1_hp', text: '100 HP')
  end

  scenario 'player 2s HP is displayed' do
    sign_in_and_play
    expect(page).to have_selector('#p2_hp', text: '100 HP')
  end
end