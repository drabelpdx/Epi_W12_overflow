require 'rails_helper'

describe "the delete question process" do
  it "deletes a question" do
    user = FactoryGirl.create(:user)
    question = FactoryGirl.create(:question, user: user)
    visit '/'
    click_on 'Log In'
    fill_in 'Email', :with => 'ian@ian.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on "What is 1 + 1 equal to?"
    click_on 'Delete Question'
    expect(page).to have_content "Your question has been deleted."
  end
end
