class Item < ActiveRecord::Base

	def self.search(params)
		
		if params[:item_type] != "All Types"
			Item.where("item_type LIKE ?", "%#{params[:item_type]}").where("title LIKE ? OR description LIKE ?", "%#{params[:title]}%", "%#{params[:description]}%")
		else
			Item.where("title LIKE ? OR description LIKE ?", "%#{params[:title]}%", "%#{params[:description]}%")
		end
	end
end
