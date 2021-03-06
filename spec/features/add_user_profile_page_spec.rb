require 'rails_helper'

describe "the create user profile process" do
  it "creates a new user profile" do
    visit '/'
    click_on 'Register'
    fill_in 'Email', :with => 'cleri@cleri.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_on 'Sign Up'
    expect(page).to have_content 'Welcome to this site!'
  end
end
