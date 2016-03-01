class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
    	t.string :status
    	t.string :icon
      	t.timestamps null: false
    end
  end
end
