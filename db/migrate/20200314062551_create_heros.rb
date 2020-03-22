class CreateHeros < ActiveRecord::Migration[6.0]
  def change 
    create_table :heros do |t|
      t.belongs_to :team 
      t.string :name
      t.string :power 
      t.string :bio
    end 
  end
end
