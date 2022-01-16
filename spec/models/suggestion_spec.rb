require 'rails_helper'

RSpec.describe Suggestion, type: :model do
  before do
    @suggestion = FactoryBot.build(:suggestion)
  end

  describe 'アドバイス内容の保存' do
    context '投稿できる場合' do
      it 'contentが存在すれば投稿できる' do
        expect(@suggestion).to be_valid
      end
    end

    context '投稿できない場合' do
      it 'contentが空では投稿できない' do
        @suggestion.content = ''
        @suggestion.valid?
        expect(@suggestion.errors.full_messages).to include("Content can't be blank")
      end
    end
  end
end
