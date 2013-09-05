require 'spec_helper'
require 'pp'

describe Comment do

  before(:each) do
    @comment = Comment.create!
  end

  context '@comment is not flagged yet' do

    it "returns false when asked 'flagged?'" do
      expect(@comment.flagged?).to eq false
    end

    it "returns true when asked 'flagged?' after calling the 'flag_item!' method" do
      @comment.flag_item!
      expect(@comment.flagged?).to eq true
    end

  end

  context '@comment is already flagged' do

    before(:each) do
      @comment.flag_item!
    end
    
    it "returns true when asked 'flagged?' after calling the 'flag_item!' method" do
      @comment.flag_item!
      expect(@comment.flagged?).to eq true
    end

  end

  
end