require 'rails_helper'

feature "New Charge" do

  scenario "/ should hide charge form initially" do
    visit root_path

    expect(page).to have_selector('#new_charge', visible: false)

  end

end
