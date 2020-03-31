require 'rails_helper'

RSpec.describe Doc, type: :model do
  let(:user){ FactoryBot.create(:user) }
  let(:doc) { FactoryBot.build(:doc, user: user) }

  it 'title, contextを入力した場合登録できる' do
    doc = Doc.new(
      title: "test title",
      content: 'test text',
      user: user,
    )
    expect(doc).to be_valid
  end
  it 'contentが空白でも成功すること' do
    doc.content = nil
    expect(doc).to be_valid  
  end
  it { is_expected.to  validate_presence_of :title }
  it { is_expected.to  validate_presence_of :user_id }
  it { is_expected.to  validate_length_of(:title).is_at_most(30) }
end
