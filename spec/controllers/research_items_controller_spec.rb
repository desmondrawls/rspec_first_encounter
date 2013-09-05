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

      end



    end
  
  end
   
end