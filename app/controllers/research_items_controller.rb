class ResearchItemsController < ApplicationController
	
	def create
		@id = params[:id]

		unless @id.nil?
			@research_item = ResearchItem.find_by_id(@id)

			unless @research_item.nil?
				current_user.add_research_item_if_new(@research_item)
			else
				current_user.add_new_research_item_if_bloomberg_exists(@id)
			end
		end

		#added for simplification purposes...
		render :new
	end

end