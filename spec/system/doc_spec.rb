require 'rails_helper'

RSpec.describe "Doc", type: :system do
  let(:user) { FactoryBot.create(:user) }
  let!(:docs) { FactoryBot.create_list(:doc, 3, user: user) }

  feature 'Docの統合テスト' do
    before do
      sign_in_as user
    end

    scenario '一覧が表示されていること' do
      visit root_path
      docs.each do |doc|
        expect(page).to have_content doc.title.upcase
      end
    end
    scenario '新規作成できること'
    scenario '編集できること'
    scenario '削除できること'
  end
end