class Item < ActiveRecord::Base
	belongs_to :types

	def self.search(params)
		
		if params[:type_id] != '0'
			params[:type_id] = params[:type_id].to_i
			if params[:predicate] == 'AND'
				puts "predicate is and"
				Item.where("type_id LIKE ?", "%#{params[:type_id]}").where("title LIKE ? OR description LIKE ? 
					OR owner LIKE ?", "%#{params[:keyword]}%", "%#{params[:keyword]}%", "%#{params[:keyword]}%")
			else
				Item.where("type_id LIKE ? OR title LIKE ? OR description LIKE ? OR owner LIKE ?", 
					"%#{params[:type_id]}", "%#{params[:keyword]}%", "%#{params[:keyword]}%", "%#{params[:keyword]}%")
			end
		else
			if params[:predicate] == 'AND'
				puts "All Types and AND were selected."
				Item.where("title LIKE ? OR description LIKE ? OR owner LIKE ?", "%#{params[:keyword]}%", "%#{params[:keyword]}%", "%#{params[:keyword]}%")
			else
				Item.all
			end
		end
	end
end
