class User < ActiveRecord::Base
	has_many :quick_ideas
	has_many :comments
	has_many :ideas
	has_many :research_items

	def has_research_item?(research_item)
		research_items.include?(research_item)
	end
end
