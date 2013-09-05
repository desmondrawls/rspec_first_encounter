require 'spec_helper'
require 'pp'

describe Comment do

  before(:each) do
    @idea = Idea.create!
  end

  context '@idea is not flagged' do

    it "returns false when asked 'flagged?'" do
      expect(@idea.flagged?).to eq false
    end

    it "returns true when asked 'flagged?' after calling the 'flag_item!' method" do
      @idea.flag_item!
      expect(@idea.flagged?).to eq true
    end

  end
  
end