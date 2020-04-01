require 'rails_helper'

RSpec.describe "SignOut", type: :system, js: true do
  let(:user) { FactoryBot.create(:user) }

  it 'サインアウトできること' do
    sign_in_as user
    click_link 'Sign Out'
    expect(page).to have_content 'Log In'
    expect(page).to_not have_content 'Sign Out'
  end
end