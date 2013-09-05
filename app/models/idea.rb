class Idea < ActiveRecord::Base
	has_many :comments
	belongs_to :user

  include Flaggable
  
end
