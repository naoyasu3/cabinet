require 'rails_helper'

RSpec.describe "LogIn", type: :system, js: true do
  scenario 'サインアップできること' do
    visit new_user_registration_path
    email = "sample@example.com"
    password = "foobar"
    fill_in "Email",	with: email
    fill_in "user_password",	with: password
    fill_in "user_password_confirmation",	with: password 
    click_button "Sign up"
    expect(page).to have_content 'Sign Out'
    expect(page).to_not have_content  'Log In'
  end
end