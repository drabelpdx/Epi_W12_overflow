require 'rails_helper'

describe "the add answer process" do
  it "creates a new answer" do
    user = FactoryGirl.create(:user)
    question = FactoryGirl.create(:question, user: user)
    visit '/'
    click_on 'Log In'
    fill_in 'Email', :with => 'ian@ian.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'What is 1 + 1 equal to?'
    click_on 'Add answer'
    fill_in 'Answer', :with => 'This is my answer.'
    click_on 'Create Answer'
    expect(page).to have_content "This is my answer."
  end
end
