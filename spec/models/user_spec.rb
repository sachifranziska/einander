require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it 'nickname、email、password、password_confirmation、last_name、first_name、birth_date、country_id、experience_id、gender_id、stay_length_idが存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end

      it 'emailが空では登録できない' do
      end

      it '重複したemailが存在する場合登録できない' do
      end

      it 'emailが@を含まない場合登録できない' do
      end

      it 'passwordが空では登録できない' do
      end

      it 'passwordが5文字以下では登録できない' do
      end

      it 'passwordとpassword_confirmationが不一致では登録できない' do
      end

      it 'last_nameが空では登録できない' do
      end

      it 'first_nameが空では登録できない' do
      end

      it 'birth_dateが空では登録できない' do
      end

      it 'country_idが選択されていないと登録できない' do
      end

      it 'experience_idが選択されていないと登録できない' do
      end

      it 'gender_idが選択されていないと登録できない' do
      end

      it 'stay_length_idが選択されていないと登録できない' do
      end

    end
  end
end
