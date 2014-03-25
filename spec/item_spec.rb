require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'manage items' do

  scenario 'adding to items list' do

    visit('/')
    expect(page).to have_title "Our Awesome Index Page"
    expect(page).to_not have_content "soup"
    click_on("Add New Item")
    expect(page).to have_title "Add Awesome Item"

    fill_in 'new_item', with:'soup'
    click_on('Submit')
    expect(page).to have_title "Our Awesome Index Page"

    expect(page).to have_content "soup"

    click_on("Add New Item")
    fill_in 'new_item', with:'chicken dumplings'
    click_on('Submit')

    click_on("Add New Item")
    fill_in 'new_item', with:'calamari'
    click_on('Submit')

    #save_and_open_page

    click_on("soup")
    expect(page).to have_title "Item - soup"


  # add more items (3 more)
  #  check index to see if there
  #  delete item 2
  #  check to make sure others are there, but item t is not



  end

end