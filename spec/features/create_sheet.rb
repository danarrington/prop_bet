require 'rails_helper'

feature 'Creating New Sheet' do
  let!(:q1) {create(:question)}
  let!(:a1) {create(:answer, question: q1)}
  let!(:a2) {create(:answer, question: q1)}

  scenario 'Brand new user' do
    visit '/'

    click_link 'Create New Sheet'
    fill_in('Name', with: 'Dan')
  end
end
