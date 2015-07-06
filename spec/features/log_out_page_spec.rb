require 'rails_helper'

describe "the log out process" do
  it "logs the user out" do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Log In'
    fill_in 'Email', :with => 'ian@ian.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    visit '/'
    click_on 'Log Out'
    expect(page).to have_content "You've been logged out successfully."
  end
end
