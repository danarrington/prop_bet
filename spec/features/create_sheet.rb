require 'rails_helper'

feature 'Creating New Sheet' do
  scenario 'Brand new user' do
    visit '/'

    click_button 'Create New Sheet'
  end
end
