require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'manage items' do

  scenario 'managing items list' do

    visit('/')
    expect(page).to have_title "Our Awesome Index Page"

  end

end