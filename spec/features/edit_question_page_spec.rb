require 'rails_helper'

describe "the edit question process" do
  it "edits a question" do
    user = FactoryGirl.create(:user)
    question = FactoryGirl.create(:question, user: user)
    visit '/'
    click_on 'Log In'
    fill_in 'Email', :with => 'ian@ian.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on "What is 1 + 1 equal to?"
    click_on 'Edit Question'
    fill_in 'Question', :with => 'What is 2 + 2 equal to?'
    fill_in 'Body', :with => "I've been at this for days. Please help."
    click_on 'Update Question'
    expect(page).to have_content "Your question has been updated."
  end
end
