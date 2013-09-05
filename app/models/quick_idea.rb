class QuickIdea < ActiveRecord::Base
	belongs_to :user
	has_many :comments

  def flagged?
    self.flag ? true : false
  end

  def flag_item!
    self.flag = true
    self.save
  end
  
end
