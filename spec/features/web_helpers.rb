def sign_in_and_play
  visit '/'
  fill_in 'p1_name', :with => 'Negan'
  fill_in 'p2_name', :with => 'Alpha'
  click_button('submit_names')
end