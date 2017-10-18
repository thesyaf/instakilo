class Search < ApplicationRecord


  def self.search(search)
    where("caption LIKE ?", "%#{search}%")
  end

end
