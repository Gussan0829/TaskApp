require 'rails_helper'

RSpec.describe TaskCard, type: :model do
  before do
    user = FactoryBot.create(:user)
    list = FactoryBot.create(:list, user_id: user.id)
    @task_card = FactoryBot.build(:task_card, list_id: list.id)
  end
  describe 'タスク投稿' do
    context 'タスク投稿ができるとき' do
      it 'タイトルとメモが存在すれば登録できる' do
        expect(@task_card).to be_valid
      end
    end
    context 'タスク投稿ができないとき' do
      it 'タイトルが空だと投稿できない' do
        @task_card.title = ''
        @task_card.valid?
        expect(@task_card.errors.full_messages).to include("タイトルを入力してください")
      end
      it 'メモが空では投稿できない' do
        @task_card.memo = ''
        @task_card.valid?
        expect(@task_card.errors.full_messages).to include("メモを入力してください")
      end
      it 'リストと紐づいていなければ出品できないこと' do
        @task_card.list_id = nil
        @task_card.valid?
        expect(@task_card.errors.full_messages).to include('Listを入力してください')
      end
    end
  end
end
