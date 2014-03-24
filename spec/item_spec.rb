require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'manage items' do

  scenario 'managing items list' do

    visit('/')
    expect(page).to have_title "Our Awesome Index Page"
    click_on("Add New Item")
    expect(page).to have_title "Add Awesome Item"

    fill_in 'new_item', with:'soup'
    click_on('Submit')
    expect(page).to have_title "Our Awesome Index Page"

    expect(page).to have_content "soup"
  end

end