class ResearchItemsController < ApplicationController
	
	def create
		@id = params[:id]

		if !@id.nil?
			@research_item = ResearchItem.find_by_id(@id)

			if !@research_item.nil?
				current_user.add_research_item_if_new(@research_item)
				redirect_to current_user
			else
				current_user.add_new_research_item_if_bloomberg_exists(@id)
				redirect_to current_user
			end
		else
			render :new
		end
		
	end

end