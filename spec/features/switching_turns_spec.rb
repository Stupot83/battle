feature 'switching turns' do
  scenario 'player 2 will attack after player 1' do
    sign_in_and_play
    click_link('attack_button')
    click_link('attack_button')
    expect(page).to have_selector('#p1_hp', text: '90 HP')
    expect(page).to have_selector('#p2_hp', text: '90 HP')
  end

  scenario 'player 1 is active when the game begins' do
    sign_in_and_play
    expect(page).to have_selector('#player_1', class: 'active_player')
  end

  scenario 'player 2 is inactive when the game begins' do
    sign_in_and_play
    expect(page).to have_selector('#player_2', class: @turn)
  end

  scenario 'player 2 is active after player 1 attacks and player 1 inactive' do
    sign_in_and_play
    click_link('attack_button')
    expect(page).to have_selector('#player_2', class: 'active_player')
    expect(page).to have_selector('#player_1', class: @turn)
  end

  scenario 'player 2 is inactive after attack and player 1 is active again' do
    sign_in_and_play
    click_link('attack_button')
    click_link('attack_button')
    expect(page).to have_selector('#player_2', class: @turn)
    expect(page).to have_selector('#player_1', class: 'active_player')
  end
end