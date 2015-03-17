class RemoveItemTypeFromItems < ActiveRecord::Migration
  def change
  	remove_column :items, :item_type, :string
  	add_column :items, :owner, :text
  	add_column :items, :type_id, :integer

  	create_table :types do |t|
      t.string :title
      t.string :description
      t.timestamps null: false
    end
  end
end
