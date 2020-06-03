require 'rails_helper'

RSpec.describe Output, type: :model do
  describe "アウトプット" do    
    it "salon_name,body,user_id,post_idが全てあったときにアウトプットができる" do
      output = build(:output)
      expect(output).to be_valid
    end
    it "bodyがなければアウトプットできない"do
      output = build(:output, body: nil)
      output.valid?
      expect(output.errors[:body]).to include("を入力してください")
  end
    it "salon_nameがなければアウトプットできない"do
    output = build(:output, salon_name: nil)
    output.valid?
    expect(output.errors[:salon_name]).to include("を入力してください")
    end
  end
end
