require 'rails_helper'

RSpec.describe User, type: :model do
  describe "新規登録" do
    it "name,staff_num,mail,passがある状態だと新規登録ができる" do
      user = FactoryBot.create(:user)
      expect(user).to be_valid
    end

    it 'nameがない場合新規登録ができない' do
      user = build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end
    it "staff_numがない場合新規登録ができない" do
      user = build(:user, staff_num: nil)
      user.valid?
      expect(user.errors[:staff_num]).to include("を入力してください")
    end
    it "mailがない場合新規登録ができない" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end
    it "重複したstaff_numがある場合新規登録ができない" do
      user = create(:user)
      another_user = build(:user, staff_num: user.staff_num)
      another_user.valid?
      expect(another_user.errors[:staff_num]).to include("はすでに存在します")
    end
    it "パスワードがない場合新規登録ができない" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end
    it "重複したメールアドレスがある場合新規登録ができない" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end
  end
end
