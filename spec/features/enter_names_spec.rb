require 'spec_helper'
feature 'Enter names' do
  scenario 'Submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Myrtle'
    fill_in :player_2_name, with: 'Barri'
    click_button "Submit"
    expect(page).to have_content 'Myrtle vs. Barri'
  end
end