require 'rails_helper'

RSpec.describe Blog, type: :model do
  before do
    @blog = FactoryBot.build(:blog)
  end

  describe '情報シェア内容の保存' do
    context '投稿できる場合' do
      it 'title, category_id, content, imageが存在すれば投稿できる' do
        expect(@blog).to be_valid
      end

      it 'contentが空でも投稿できる' do
        @blog.content = ''
        expect(@blog).to be_valid
      end

      it 'imageが空でも投稿できる' do
        @blog.image = nil
        expect(@blog).to be_valid
      end
    end

    context '投稿できない場合' do
      it 'contentとimageが空では投稿できない' do
        @blog.content = ''
        @blog.image = nil
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Content can't be blank")
      end

      it 'titleが空では投稿できない' do
        @blog.title = ''
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Title can't be blank")
      end

      it 'category_idが選択されていないと投稿できない' do
        @blog.category_id = 1
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Category can't be blank")
      end

      it 'user_idが紐付いていなければ登録できない' do
        @blog.user = nil
        @blog.valid?
        expect(@blog.errors.full_messages).to include("User must exist")
      end
    end
  end
end
