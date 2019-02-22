class AddNotNullToFields < ActiveRecord::Migration[5.2]
  def change
  	 change_column :rankings, :name, :string, null: false
  	 change_column :rankings, :rank, :integer, null: false
  	 change_column :rankings, :read, :boolean, null: false
  end
end
