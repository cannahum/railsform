class FixColumnName < ActiveRecord::Migration
  def self.up
  	rename_column :Items, :type, :item_type
  end

  def self.down
  	rename_column :Items, :item_type, :type
  end
end
