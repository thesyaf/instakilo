class Search < ApplicationRecord


  def self.search(search)
    where("username ILIKE ? OR caption ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
