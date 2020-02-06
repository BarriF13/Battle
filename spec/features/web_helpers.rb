require 'spec_helper.rb'
# this is for DRY the code
def sign_in_and_play
  visit('/')
    fill_in :player_1, with: 'Myrtle'
    fill_in :player_2, with: 'Barri'
    click_button "Submit"
  
end