class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :title
      t.text :champion_advice
      t.text :item_build


      t.references :champion
      t.references :user
      t.timestamps
    end
  end
end
