require 'spec_helper'
require 'pp'

describe ResearchItemsController do

  describe 'POST #show' do

    context 'with ID' do

      before(:each) do
        @research_item = ResearchItem.create!
      end

      it "is a valid ResearchItem" do
        expect(@research_item).to be_valid
      end

    end
  
  end
   
end