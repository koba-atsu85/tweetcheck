class DelUserTableColumn < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :attribute
  end
end
