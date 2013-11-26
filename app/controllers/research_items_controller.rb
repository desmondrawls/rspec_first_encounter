class ResearchItemsController < ApplicationController
	
	def create
		@id = params[:id]
		# SomeClass.some_method(params, current_user)
		if @id.present?
			@research_item = ResearchItem.find_by_id(@id)

			if @research_item.present?
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

# 	def create
# 		@id = params[:id]
# 		utility = Utility.new
# 		if utility.some_method(id, current_user)
# 			redirect_to current_user
# 		else
# 			render :new
# 		end
		
# 	end

# class Utility
# 	def some_method(id, current_user)
# 		if id.present?
# 			current_user.add_research_item(@id)
# 			return true
# 		else
# 			return false
# 		end
# 	end
# end
