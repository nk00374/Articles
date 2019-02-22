class CreateRankings < ActiveRecord::Migration[5.2]
  def change
    create_table :rankings do |t|
      t.string :name
      t.integer :rank
      t.boolean :read
      t.timestamps
    end
  end
end
