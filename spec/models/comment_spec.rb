require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント送信' do
    context 'コメントを送信出来る時' do
      it "textがあればコメントを送信できる" do
        expect(@comment).to be_valid
      end
    end

    context 'コメントを送信出来ない時' do
      it "textが空の場合、送信できない" do
        @comment.text = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include('文を入力してください')
      end
    end
  end
end
