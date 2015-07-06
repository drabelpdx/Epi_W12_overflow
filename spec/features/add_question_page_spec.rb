require 'rails_helper'

describe "the add question process" do
  it "creates a new question" do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Log In'
    fill_in 'Email', :with => 'ian@ian.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'Ask Question'
    fill_in 'Question', :with => 'What is 1 + 1 equal to?'
    fill_in 'Body', :with => "I've been at this for days. Please help."
    click_on 'Create Question'
    expect(page).to have_content "Your question has been posted."
  end
end
