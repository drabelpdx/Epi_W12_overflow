require 'rails_helper'

describe "the user log in process" do
  it "logs in a user" do
    user1 = FactoryGirl.create(:user)
    visit '/'
    click_on 'Log In'
    fill_in 'Email', :with => 'ian@ian.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    expect(page).to have_content "You've been logged in"
  end
end
