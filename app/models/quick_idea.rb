class QuickIdea < ActiveRecord::Base
	belongs_to :user
	has_many :comments

  include Flaggable

end
