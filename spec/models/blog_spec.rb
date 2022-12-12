require 'rails_helper'

RSpec.describe Blog, type: :model do
  before do
    @blog = FactoryBot.build(:blog)
  end

  describe "新規日記投稿" do
    context  '日記投稿ができる時' do
      it 'すべての値が正しく入力されていれば登録できる' do
        expect(@blog).to be_valid
      end
    end
    
    context  '日記投稿ができない時' do
    it "titleが空だと登録できない" do
      @blog.title = nil
      @blog.valid?
      expect(@blog.errors.full_messages).to include("Title can't be blank")
    end
    it "時間設定がないと登録できない" do
      @blog.start_time = nil
      @blog.valid?
      expect(@blog.errors.full_messages).to include("Start time can't be blank")
    end
    it "contentがないと登録できない" do
      @blog.content = nil
      @blog.valid?
      expect(@blog.errors.full_messages).to include("Content can't be blank")
    end
   end
  end
end
