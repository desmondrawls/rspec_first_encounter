class ResearchItemsController < ApplicationController
	
	def create
		@id = params[:id]

		unless @id.nil?
			@research_item = ResearchItem.find_by_id(@id)

			unless @research_item.nil?
				current_user.add_research_item_if_new(@research_item)
			else
				bloomberg_research_item = BloombergResearch.find_by_id(@id)

				add_research_item_to_current_user(@research_item = ResearchItem.new(bloomberg_research_item.params)) unless bloomberg_research_item.nil?
			end
		end

		#added for simplification purposes...
		render :new
	end

end