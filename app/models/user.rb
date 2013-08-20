class User < ActiveRecord::Base
	has_many :quick_ideas
	has_many :comments
	has_many :ideas
end
