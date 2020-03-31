require 'rails_helper'

RSpec.describe "LogIn", type: :system, js: true do
  let(:user) { FactoryBot.create(:user) }

  scenario 'ログインできること' do
    sign_in_as user
    expect(page).to have_content 'Sign Out'
    expect(page).to_not have_content  'Log In'
  end
end