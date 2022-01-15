require 'rails_helper'

RSpec.describe Question, type: :model do
  before do
    @question = FactoryBot.build(:question)
  end

  describe '相談内容の保存' do
    context '投稿できる場合' do
      it 'title, category_id, contentが存在すれば投稿できる' do
        expect(@question).to be_valid
      end
    end

    context '投稿できない場合' do
      it 'titleが空では投稿できない' do
        @question.title = ''
        @question.valid?
        expect(@question.errors.full_messages).to include("Title can't be blank")
      end

      it 'category_idが選択されていないと投稿できない' do
        @question.category_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include("Category can't be blank")
      end

      it 'contentが空では投稿できない' do
        @question.content = ''
        @question.valid?
        expect(@question.errors.full_messages).to include("Content can't be blank")
      end
    end
  end
end
