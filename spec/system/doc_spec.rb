require 'rails_helper'

RSpec.describe "Doc", type: :system, js: true do
  let(:user) { FactoryBot.create(:user) }
  let!(:docs) { FactoryBot.create_list(:doc, 3, user: user) }
  let(:doc) { FactoryBot.create(:doc, user: user) }

  describe 'Docの統合テスト' do
    before do
      sign_in_as user
    end

    scenario '一覧が表示されていること' do
      visit root_path
      docs.each do |doc|
        expect(page).to have_content doc.title.upcase
      end
    end

    scenario '新規作成できること' do
      visit new_doc_path
      title = "some title test"
      content = "some text"
      fill_in "doc_title",	with: title
      fill_in "doc_content",	with: content 
      click_button 'Create Doc'
      expect(page).to have_content title.upcase
      expect(page).to have_content content
    end

    scenario '編集できること' do
    end
    scenario '削除できること'
  end
end