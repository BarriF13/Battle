require './app'
feature 'Attacking' do
scenario 'reduce  player 2 HP by 10' do 
  sign_in_and_play
  click_link 'Attack'
  click_link 'OK'
  expect(page).not_to have_content'Barri: 60HP'
  expect(page).to have_content'Myrtle attacked Barri'
  end
  
end