module Flaggable

  def flagged?
    self.flag ? true : false
  end

  def flag_item!
    self.flag = true
    self.save
  end

end