require './app'
feature 'Attacking' do
scenario 'reduce  player 2 HP by 10' do 
  sign_in_and_play
  click_button 'Attack'
  click_button 'OK'
  expect(page).not_to have_content'Barri: 60HP'
  expect(page).to have_content' Barri: 50HP'
  end
  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Barri attacked Myrtle'
  end
end 