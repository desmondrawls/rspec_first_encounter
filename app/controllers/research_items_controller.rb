class ResearchItemsController < ApplicationController
	
	def create
		@id = params[:id]

		unless @id.nil?
			@research_item = ResearchItem.find_by_id(@id)

			unless @research_item.nil?
				add_book_to_current_user(@research_item) unless current_user.has_research_item? @research_item.id
			else
				bloomberg_research_item = BloombergResearch.find_by_id(@id)

				add_book_to_current_user(@research_item = ResearchItem.new(bloomberg_research_item.params)) unless bloomberg_research_item.nil?
			end
		end

		respond_to do |format|
			format.js
		end
	end

private
	def add_research_item_to_current_user (research_item)
		unless current_user.nil?
			current_user.research_items << research_item
			current_user.save!
		end
	end
end