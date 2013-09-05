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

  end
  
end