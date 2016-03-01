class CreateFeels < ActiveRecord::Migration
  def change
    create_table :feels do |t|
    	t.integer :user_id
    	t.text :description
    	t.integer :mood_id
    	t.text :review
      	t.timestamps null: false
    end
  end
end
