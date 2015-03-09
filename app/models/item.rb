class Item < ActiveRecord::Base

	def self.search(search)
		where("title LIKE ?", "%#{search}")
		where("description LIKE ?", "%#{search}")
		where("type LIKE ?", "#{search}")
	end
end
