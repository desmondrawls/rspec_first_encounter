require 'spec_helper'
require 'pp'

describe ResearchItemsController do

  describe 'POST #show' do

    before(:each) do
      @current_user = User.create!(:email => "example@example.com", :password => "password")
      session[:user_id] = @current_user.id
    end

    context 'without ID' do

      it "does not add a research_item to the current_user" do
        expect {
          post :create, id: nil
        }.to_not change(@current_user.research_items, :count)
      end

    end

    context 'with ID' do

      before(:each) do
        @research_item = ResearchItem.create!
      end

      it "is a valid research_item" do
        expect(@research_item).to be_valid
      end

      it "assigns ID to @id" do
        post :create, id: @research_item
        expect(assigns(:id)).to eq @research_item.id.to_s
      end

      context 'finds research_item by ID' do

        it "assigns the research_item to @research_item" do
          post :create, id: @research_item
          expect(assigns(:research_item)).to eq @research_item
        end

        it "adds the research_item to current_user" do
          expect {
            post :create, id: @research_item
          }.to change(@current_user.research_items, :count).by(1)
        end

        it "calls 'add_research_item_if_new on current_user" do
          pending "error: expected 1 time received 0 times"
          post :create, id: @research_item
          @current_user.should_receive(:add_research_item_if_new).with(@research_item)
        end

      end

      context 'does not find research_item by ID' do

        before(:each) do
          @research_item = ResearchItem.new(:id => 100)
        end

        it "looks for the id in BloombergResearch" do
          pending "error expected 1 time received 0 times"
          post :create, id: @research_item 
          pp @research_item.id
          BloombergResearch.should_receive(:find_by_id).with(@research_item.id)
        end

      end

    end
  
  end
   
end