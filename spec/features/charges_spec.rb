require 'rails_helper'

feature "New Charge" do

  scenario "show charge page should hide charge form initially", :js => true do
    visit new_charge_path
    expect(page).to have_selector('#new_charge', visible: false)
  end

end
