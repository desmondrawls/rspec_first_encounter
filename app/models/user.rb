class User < ActiveRecord::Base
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :quick_ideas
	has_many :comments
	has_many :ideas
	has_many :research_items

  def add_research_item_if_new(research_item)
    self.add_research_item(research_item) unless self.has_research_item? research_item.id
  end

  def add_research_item (research_item)
    self.research_items << research_item
    self.save!
  end

  def has_research_item?(research_item)
    research_items.include?(research_item)
  end
end
