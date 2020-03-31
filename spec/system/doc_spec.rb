require 'rails_helper'

RSpec.describe "Doc", type: :system, js: true do
  let(:user) { FactoryBot.create(:user) }

  feature 'Docの統合テスト' do
    before do
      sign_in_as user
    end
    scenario '一覧が表示されていること'
    scenario '新規作成できること'
    scenario '編集できること'
    scenario '削除できること'
  end
end