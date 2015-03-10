class Item < ActiveRecord::Base

	def self.search(params)
		puts "hello to the model"

		puts params[:title]
		puts params[:description]
		puts params[:item_type]

		if params[:item_type] != "All Types"
			Item.where("title LIKE ? OR description LIKE ? WHERE item_type LIKE ?", "%#{params[:title]}%", "%#{params[:description]}%", "%#{params[:item_type]}")
		else
			Item.where("title LIKE ? OR description LIKE ?", "%#{params[:title]}%", "%#{params[:description]}%")
		end
	end
end
