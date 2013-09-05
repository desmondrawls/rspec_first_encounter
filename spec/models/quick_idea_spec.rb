require 'spec_helper'
require 'pp'

describe QuickIdea do
  
  before(:each) do
    @quick_idea = QuickIdea.create!
  end

  context '@quick_idea is not flagged' do

    it "returns false when asked 'flagged?'" do
      expect(@quick_idea.flagged?).to eq false
    end

    it "returns true when asked 'flagged?' after calling the 'flag_item!' method" do
      @quick_idea.flag_item!
      expect(@quick_idea.flagged?).to eq true
    end

  end

end