require 'spec_helper'

describe 'creates a new question' do
    it 'allows the logged on user to access the new question form and creates a question' do
      create_user_and_sign_in
      question = FactoryGirl.build(:question)
      # question = FactoryGirl.create(:question)
      click_on "Ask a Question"
      page.should have_content "Add a Question"
      fill_in "A brief, one line summary of your question:", :with => question.header
      fill_in "Your full question:", :with => question.content
      click_on "Create Question"
      page.should have_content question.header
    end
end
