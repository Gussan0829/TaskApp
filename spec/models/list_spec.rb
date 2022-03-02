require 'rails_helper'

RSpec.describe List, type: :model do
  before do
    user = FactoryBot.create(:user)
    @list = FactoryBot.build(:list, user_id: user.id)
  end
  describe 'リスト投稿' do
    context 'リスト投稿ができるとき' do
      it 'タイトルが存在すれば登録できる' do
        expect(@list).to be_valid
      end
    end
    context 'リスト投稿ができないとき' do
      it 'タイトルが空だと投稿できない' do
        @list.title = ''
        @list.valid?
        expect(@list.errors.full_messages).to include("タイトルを入力してください")
      end
    end
  end
end